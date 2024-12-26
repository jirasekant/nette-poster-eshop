<?php

declare(strict_types=1);

namespace App\Router;

use Nette;
use Nette\Application\Routers\RouteList;
use Nette\Application\Routers\Route;

final class RouterFactory
{
	use Nette\StaticClass;

	public static function createRouter():RouteList {
		$router = new RouteList;
		
		// Admin routes
		$router->addRoute('admin/<presenter>/<action>[/<id>]', [
			'module' => 'Admin',
			'presenter' => 'Homepage',
			'action' => 'default'
		]);

		// Front routes
		$router->addRoute('products', 'Front:Product:list');
		$router->addRoute('products/<id>', 'Front:Product:show');
		
		$router->addRoute('<presenter>/<action>[/<id>]', [
			'module' => 'Front',
			'presenter' => 'Homepage',
			'action' => 'default'
		]);

		return $router;
	}
}
