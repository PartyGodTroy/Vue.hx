# Vue.hx

*Vue + Haxe a match made in heaven!*

Haxe externs for [Vue.JS](https://vuejs.org/ "Vue.js Homepage") 2.0. intended to mirror the API located at [Vue.js API](https://vuejs.org/api/)


<https://github.com/tiagolr/hxvue/blob/master/src/js/vue/Vue.hx>


## Installation
```cmd
C:\> haxelib install vue
```

## Haxelib local use

Use this repo locally

```cmd
haxelib dev vue path/to/folder/src
```

or use git directly

```cmd
haxelib git vue https://github.com/MatthijsKamstra/Vue.hx.git
```

don't forget to add it to your build file

```cmd
-lib vue
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