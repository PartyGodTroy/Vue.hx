package vue;

@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:Dynamic);
}
typedef Route = {
	var path:String;
	@:optional var component:VueComponent;
	@:optional var name:String;


// components?: { [name: string]: Component }; // for named views
// redirect?: string | Location | Function;
// alias?: string | Array<string>;
// children?: Array<RouteConfig>; // for nested routes
// beforeEnter?: (to: Route, from: Route, next: Function) => void;
// meta?: any;


}
typedef RouterOption = {
	var mode:String; // 'history','hash','abstract'
	var base:Dynamic;
	var routes:Array<Route>;
}
