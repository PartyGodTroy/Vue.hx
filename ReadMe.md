# Vue.hx

*Vue + Haxe a match made in heaven!*

Haxe externs for [Vue.JS](https://vuejs.org/ "Vue.js Homepage") 2.0. intended to mirror the API located at [Vue.js API](https://vuejs.org/api/)

## Installation
```cmd
C:\> haxelib install vue
```

## Features

+ Externs for the core Vue 2.0 API contained in the ```Vue``` class 
+ Typedefs for ```VueConfig``` , ```VueComponentOptions```, ```VueOptions```, and ```RenderFunction```
+ An optional Component class (```VueComponent```) which, when extended, allows the use of an *@template* metatag to add code for templates right in your haxe class. 
```haxe
    @template("<p>My Template</p>") //The component class will use the first @template for the template
    class MyComponent extends vue.VueComponent{
        public function new()
        {
            super('my-component', {})
        }
    }
``` 

Other that that its haxe/vue business as usual