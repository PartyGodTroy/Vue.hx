package vue;

import haxe.extern.EitherType;
import js.html.HtmlElement;

/**
 * vue-router@2.x only works with Vue 2.x.
 */
@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:Dynamic);
}

// https://router.vuejs.org/en/api/route-object.html
typedef Route = {
	var path:String;
	@:optional var component:VueComponent;
	@:optional var name:String;
	@:optional var params:Dynamic;
	@:optional var query:Dynamic;
	@:optional var hash:String;
	@:optional var fullPath:String;
	@:optional var matched:Array<RouteRecord>;
}
typedef RouterOption = {
	var mode:String; // 'history','hash','abstract'
	var base:Dynamic;
	var routes:Array<Route>;
}
typedef RouteRecord = {
	// no idea what it does
}


@:native('this')
extern class RouterCtx {

	@:native("$route") public var route:Route;

	// static var userId(default, null):String;
	// var connection(default, null):Dynamic;
	// static function setUserId(?userId:String):Void;
	// static var isSimulation(default, null):Bool;
	// static var unBlock(default, null):Bool;
}