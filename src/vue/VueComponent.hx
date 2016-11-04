package vue;
import haxe.rtti.Meta;
import haxe.ds.StringMap;
import vue.Vue;

@template('<p>This is the standard Template</p>')
class VueComponent 
{
    private static var Components:StringMap<VueComponent>;

    public function new(tag:String, options:VueComponentOptions)
    {
        if(options.template == null || options.template == ""){
            options.template = Meta.getType(Type.getClass(this)).template[0];
        }
        options.data = data;
        Vue.component(tag,options);
    }
    public function data():VueComponent
    {
        return this;
    }

}