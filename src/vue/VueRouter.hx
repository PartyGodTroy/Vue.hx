package vue;

@native("VueRouter")
extern class VueRouter {
  public function new (routeOptions:Dynamic);
}
typedef Route = {
  var path:String;
  var component:VueComponent;
}
typedef RouterOption = {
  var mode:String;
  var base:Dynamic;
  var routes:Array<Route>;
}
