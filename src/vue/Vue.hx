package vue;

import js.html.HtmlElement;

@:native("Vue")
extern class Vue implements Dynamic
{
    public function new(options:VueOptions);

    @:native("$data") public var data:Dynamic;
    @:native("$options") public var options:Dynamic;
    @:native("$el") public var el:HtmlElement;
    @:native("$root") public var root:Vue;
    @:native("$children") public var children:Array<Vue>;
    @:native("$slots") public var object:Dynamic;
    @:native("$refs") public var refs:Dynamic;
    @:native("$isServer") public var isServer:Bool;
    @:native("$mount")public function mount(el:String):Vue;
    @:native("$watch")public function watch(item:String, cb:Dynamic->Dynamic->Void):Vue;

    public static function component(tag:String, ?componentOptions:Dynamic):Dynamic;
    public static function use(extension:Dynamic):Void;
    public static function extend(options:VueOptions):Vue;
    public static function nextTick(callback:Void->Void):Void;
    public static function set(object:Dynamic, key:String, value:Dynamic):Void;
    public static function delete(object:Dynamic, key:String):Void;
    public static function filter(id:String, filterFunction:Dynamic->Dynamic):Void;
    public static function compile(val:String):RenderFunction;
    // Finish adding instance methods/data downward
}
typedef VueConfig = {
    @:optional var silent:Bool;
    @:optional var optionsMergeStrategies:Dynamic;
    @:optional var devtools:Bool;
    @:optional var errorHandler:Dynamic->Void;//Change When we find out what an error is
    @:optional var keyCodes:Dynamic;

}
typedef VueComponentOptions = {
    @:optional var propsData:Dynamic;
    @:optional var watch:Dynamic;
    @:optional var props:Array<String>;
    @:optional var methods:Dynamic;
    @:optional var computed:Dynamic;
    @:optional var template:String;
    @:optional var data:Void->Dynamic;
}
typedef VueOptions ={
    @:optional var watch:Dynamic;
    @:optional var props:Array<String>;
    @:optional var methods:Dynamic;
    @:optional var computed:Dynamic;
    @:optional var template:String;
    @:optional var data:Dynamic;
    @:optional var render:Dynamic;//Replace dynamic when we find out what a render is
    @:optional var staticRenderFns:Dynamic;//Replace dynamic when we find out what a render is
    @:optional var propsData:Dynamic;
    @:optional var beforeCreate:Void->Void;
    @:optional var created:Void->Void;
    @:optional var beforeMount:Void->Void;
    @:optional var mounted:Void->Void;
    @:optional var beforeUpdate:Void->Void;
    @:optional var updated:Void->Void;
    @:optional var activated:Void->Void;
    @:optional var deactivated:Void->Void;
    @:optional var beforeDestroy:Void->Void;
    @:optional var destroyed:Void->Void;
    @:optional var mixins:Array<Dynamic>;//Keep this Dynamic
}
typedef RenderFunction = {
    @:optional var render:Render;
    @:optional var staticRenderFns:Dynamic;
}
typedef Render = {

}
