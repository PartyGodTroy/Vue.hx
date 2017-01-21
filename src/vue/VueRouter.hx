package vue;

@:native("VueRouter")
extern class VueRouter {
	public function new (routeOptions:Dynamic);
}
typedef Route = {
	var path:String;
	var component:VueComponent;
	@:optional var name:String;
}
typedef RouterOption = {
	var mode:String;
	var base:Dynamic;
	var routes:Array<Route>;
}
