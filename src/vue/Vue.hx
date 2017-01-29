package vue;

import haxe.io.Path;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.html.HtmlElement;

/**
 * Vue.js externs version 2.0
 *
 * @source https://vuejs.org/
 *
 * A combined effort from:
 *
 * @author Ventroy Rolle (https://github.com/kidveno)
 * @author TiagoLr (https://github.com/tiagolr)
 * @author Matthijs Kamstra (https://github.com/MatthijsKamstra)
 */
@:native("Vue")
extern class Vue implements Dynamic
{
	public function new(options:VueOptions);

	// Instance Properties (https://vuejs.org/v2/api/#Instance-Properties)
	@:native("$data") public var data:Dynamic;
	@:native("$el") public var el:HtmlElement;
	@:native("$options") public var options:Dynamic;
	@:native("$parent") public var parent:Vue;
	@:native("$root") public var root:Vue;
	@:native("$children") public var children:Array<Vue>;
	@:native("$slots") public var object:Dynamic;
	// @:native("$scopedSlots") public var scopedSlots:Dynamic; // New in 2.1.0
	@:native("$refs") public var refs:Dynamic;
	@:native("$isServer") public var isServer:Bool;

	// Global-API (https://vuejs.org/v2/api/#Global-API)
	public static function extend(options:VueOptions):Vue;
	public static function nextTick(callback:Void->Void):Void;
	public static function set(object:Dynamic, key:String, value:Dynamic):Void;
	public static function delete(object:Dynamic, key:String):Void;
	public static function directive(id:String, ?definition:Dynamic):Dynamic;
	public static function filter(id:String, filterFunction:Dynamic->Dynamic):Void;
	public static function component(tag:String, ?componentOptions:Dynamic):Dynamic;
	public static function use(extension:Dynamic):Void;
	public static function mixin(minin:Dynamic):Void;
	public static function compile(val:String):RenderFunction;

	// https://vuejs.org/v2/api/#Instance-Methods-Data
	@:native('$watch') function watch(expr:EitherType<String, Void->Dynamic>, callback:Dynamic->Dynamic->Void, ?options: { deep:Bool, immediate:Bool } ):Void;
	@:native('$set') function set(object:Dynamic, key:String, value:Dynamic):Void;
	@:native('$delete') function delete(object:Dynamic, key:String):Void;

	// Instance-Methods-Events (https://vuejs.org/v2/api/#Instance-Methods-Events)
	@:native('$on') function on(event:String, callback:Dynamic->Void ):Void;
	@:native('$once') function once(event:String, callback:Dynamic->Void ):Void;
	@:native('$off') function off(?event:String, ?callback:Dynamic->Void ):Void;
	@:native('$emit') function emit(event:String, ?args: { } ):Void;

	// Instance-Methods-Lifecycle (https://vuejs.org/v2/api/#Instance-Methods-Lifecycle)
	@:native('$mount') function mount(?el:EitherType<HtmlElement,String>):Void;
	@:native('$forceUpdate') function forceUpdate():Void;
	@:native('$nextTick') function nextTick_(?callback:Dynamic->Void):Void;
	@:native('$destroy') function destroy(?remove:Bool):Void;

}

typedef VueConfig = {
	@:optional var silent:Bool;
	@:optional var optionsMergeStrategies:Dynamic;
	@:optional var devtools:Bool;
	@:optional var errorHandler:Dynamic->Void;//Change When we find out what an error is
	@:optional var keyCodes:Dynamic;
}

// Options / Data (https://vuejs.org/v2/api/#Options-Data)
typedef VueComponentOptions = {
	@:optional var data:Dynamic;
	@:optional var props:Array<String>;
	@:optional var propsData:Dynamic;
	@:optional var computed:Dynamic;
	@:optional var methods:Dynamic;
	@:optional var template:String;
	@:optional var watch:Dynamic;
}

typedef VueOptions = {
	@:optional var watch:Dynamic;
	@:optional var router:VueRouter; // in combination with VueRouter
	@:optional var props:Array<String>;
	@:optional var methods:Dynamic;
	@:optional var computed:Dynamic;

	@:optional var data:Dynamic;
	@:optional var render:Dynamic;//Replace dynamic when we find out what a render is
	@:optional var staticRenderFns:Dynamic;//Replace dynamic when we find out what a render is
	@:optional var propsData:Dynamic;
	@:optional var deactivated:Void->Void;

	// Options / DOM (https://vuejs.org/v2/api/#Options-DOM)
	@:optional var el:EitherType<String, EitherType<HtmlElement, Void->Dynamic>>;
	@:optional var template:String;
	@:optional var replace:Bool; // only respected if the template option is also present.

	// Options-Lifecycle / Hooks (https://vuejs.org/v2/api/#Options-Lifecycle-Hooks)
	@:optional var beforeCreate:Void->Void;
	@:optional var created:Void->Void;
	@:optional var beforeMount:Void->Void;
	@:optional var mounted:Void->Void;
	@:optional var beforeUpdate:Void->Void;
	@:optional var updated:Void->Void;
	@:optional var activated:Void->Void;
	@:optional var beforeDestroy:Void->Void;
	@:optional var destroyed:Void->Void;

	// Options / Assets (https://vuejs.org/v2/api/#Options-Assets)
	@:optional var directives:Dynamic;
	@:optional var filters:Dynamic;
	@:optional var components:Dynamic;

	// Options / Misc (https://vuejs.org/v2/api/#Options-Misc)
	@:optional var parent:Vue;
	@:optional var mixins:Array<Dynamic>; 	//Keep this Dynamic
	@:optional var name:String; 			// only respected when used in Vue.extend().
	// extends
	// delimiters
	// functional
}

typedef RenderFunction = {
	@:optional var render:Render;
	@:optional var staticRenderFns:Dynamic;
}
typedef Render = {

}

// `this` scope in Vue is different then in Haxe
@:native('this')
extern class Context {
	@:selfCall public function Context():Dynamic;
}
@:native('this')
extern class MethodsCtx {
	@:selfCall public function MethodsCtx():Dynamic;
}
@:native('this')
extern class This {
	@:selfCall public function This():Dynamic;
}
