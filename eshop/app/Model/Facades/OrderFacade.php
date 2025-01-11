<?php

declare(strict_types=1);

namespace App\Model\Facades;

use App\Model\Entities\ShopOrder;
use App\Model\Entities\OrderItem;
use App\Model\Entities\UserInformation;
use App\Model\Repositories\ShopOrderRepository;
use App\Model\Repositories\OrderItemRepository;
use App\Model\Repositories\UserInformationRepository;
use App\Model\Repositories\UserRepository;
use App\Model\Facades\CartFacade;
use Dibi\DateTime;

class OrderFacade {
    private ShopOrderRepository $shopOrderRepository;
    private OrderItemRepository $orderItemRepository;
    private CartFacade $cartFacade;
    private UserInformationRepository $userInformationRepository;
    private UserRepository $userRepository;

    public function __construct(
        ShopOrderRepository $shopOrderRepository,
        OrderItemRepository $orderItemRepository,
        CartFacade $cartFacade,
        UserInformationRepository $userInformationRepository,
        UserRepository $userRepository
    ) {
        $this->shopOrderRepository = $shopOrderRepository;
        $this->orderItemRepository = $orderItemRepository;
        $this->cartFacade = $cartFacade;
        $this->userInformationRepository = $userInformationRepository;
        $this->userRepository = $userRepository;
    }

    public function createOrder(array $orderData, int $userId, bool $rememberInfo = false): ShopOrder {
        $cart = $this->cartFacade->getCartByUser($userId);
        if (!$cart || empty($cart->items)) {
            throw new \InvalidArgumentException('Cart is empty');
        }

        try {
            $user = $this->userRepository->find($userId);
            if (!$user) {
                throw new \InvalidArgumentException('User not found');
            }

            // Create and save user information
            $userInformation = new UserInformation();
            $userInformation->user = $user;
            $userInformation->firstName = $orderData['first_name'] ?? throw new \InvalidArgumentException('First name is required');
            $userInformation->lastName = $orderData['last_name'] ?? throw new \InvalidArgumentException('Last name is required');
            $userInformation->street = $orderData['street'] ?? throw new \InvalidArgumentException('Street is required');
            $userInformation->apartment = $orderData['apartment'] ?? null;
            $userInformation->city = $orderData['city'] ?? throw new \InvalidArgumentException('City is required');
            $userInformation->postalCode = $orderData['postal_code'] ?? throw new \InvalidArgumentException('Postal code is required');
            $userInformation->country = $orderData['country'] ?? throw new \InvalidArgumentException('Country is required');
            $userInformation->phone = $orderData['phone'] ?? throw new \InvalidArgumentException('Phone is required');
            $this->userInformationRepository->persist($userInformation);

            // Create order
            $order = new ShopOrder();
            $order->user = $user;
            $order->userInformation = $userInformation;
            $order->totalAmount = $cart->getTotalPrice();
            $order->status = ShopOrder::STATUS_PENDING;
            $order->created = new DateTime();
            $order->shippingMethod = $orderData['shipping_method'] ?? throw new \InvalidArgumentException('Shipping method is required');
            $order->paymentMethod = $orderData['payment_method'] ?? throw new \InvalidArgumentException('Payment method is required');
            
            // Persist order
            $this->shopOrderRepository->persist($order);

            // Create order items from cart items
            foreach ($cart->items as $cartItem) {
                $orderItem = new OrderItem();
                $orderItem->order = $order;
                $orderItem->poster = $cartItem->getPoster();
                $orderItem->posterSize = $cartItem->posterSize;
                $orderItem->count = $cartItem->count;
                $orderItem->price = $cartItem->posterSize->price;
                $this->orderItemRepository->persist($orderItem);
            }

            // Now we can safely delete the cart since we've copied all necessary data
            $this->cartFacade->deleteCart($cart);

            return $order;
        } catch (\Exception $e) {
            // If something goes wrong during order creation, ensure we don't leave orphaned data
            if (isset($userInformation)) {
                $this->userInformationRepository->delete($userInformation);
            }
            if (isset($order)) {
                $this->shopOrderRepository->delete($order);
            }
            throw $e;
        }
    }

    public function getOrder(int $id): ShopOrder {
        try {
            return $this->shopOrderRepository->find($id);
        } catch (\Exception $e) {
            throw new \InvalidArgumentException('Order not found', 0, $e);
        }
    }

    public function getOrderItems(int $order): array
    {
        try {
            return $this->orderItemRepository->findAllBy(['order' => $order]);
        } catch (\Exception $e) {
            throw new \InvalidArgumentException('Order not found', 0, $e);
        }
    }

    public function updateOrderStatus(ShopOrder $order, string $status): void {
        $order->status = $status;
        $this->shopOrderRepository->persist($order);
    }

    public function findOrders(?array $params=null,?int $offset=null,?int $limit=null):array
    {
        return $this->shopOrderRepository->findAllBy($params,$offset,$limit);
    }


    public function getUserInformation(int $userId): ?UserInformation {
        try {
            $userInfos = $this->userInformationRepository->findByUser($userId);
            return $userInfos ? end($userInfos) : null;
        } catch (\Exception $e) {
            return null;
        }
    }
} 