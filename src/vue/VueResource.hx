
package vue;

@:native("Vue.$http")
extern class VueResource {
	public static function get(url:String, options:RequestOptions):js.Promise<Dynamic>;
	public static function head(url:String, options:RequestOptions):js.Promise<Dynamic>;
	public static function delete(url:String, options:RequestOptions):js.Promise<Dynamic>;
	public static function json(url:String, options:RequestOptions):js.Promise<Dynamic>;
	
	public static function post(url:String, body:Dynamic ,options:RequestOptions):js.Promise<Dynamic>;
	public static function put(url:String, body:Dynamic ,options:RequestOptions):js.Promise<Dynamic>;
	public static function patch(url:String, body:Dynamic ,options:RequestOptions):js.Promise<Dynamic>;
}

typedef RequestOptions =
{
	var url:String;
	var body:Dynamic;
	var headers:Dynamic;
	var params:Dynamic;
	var method:String;
	var timeout:Int;
	var before:RequestOptions->Void;
	var progress:js.html.Event->Void;
	var credentials:Bool;
	var emulateHTTP:Bool;
	var emulateJSON:Bool;
}
typedef Response =
{
	var url:String;
	var body:Dynamic;
	var headers:Dynamic;
	var ok:Bool;
	var status:Int;
	var statusText:String;
	var text:Void->js.Promise<Dynamic>;
	var json:Void->js.Promise<Dynamic>;
	var blob:Void->js.Promise<Dynamic>;
}
