package vue;

import haxe.extern.EitherType;
import js.html.HtmlElement;
import vue.Vue;

@:enum abstract RouterMode(String) {
	var HISTORY = 'history';
    var HASH = 'hash';
    var ABSTRACT = 'abstract';
}

/**
 * vue-router@2.x only works with Vue 2.x.
 */
@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:RouterOption);
}

// https://router.vuejs.org/en/api/route-object.html
typedef Route = {
	var path:String;
	@:optional var component:EitherType<VueComponentOptions,String>;
	@:optional var name:String;
	@:optional var test:String;
	@:optional var params:Dynamic;
	@:optional var query:Dynamic;
	@:optional var hash:String;
	@:optional var fullPath:String;
	@:optional var matched:Array<RouteRecord>;
}
typedef RouterOption = {
	@:optional var mode:RouterMode; // 'history','hash','abstract'
	@:optional var base:Dynamic;
	var routes:Array<Route>;
}
typedef RouteRecord = {
	// no idea what it does
}

@:native('this')
extern class RouterCtx {
	// @:native("$route") public var route:Route;
}