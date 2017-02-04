# Tutorials

Follow these instructions from the original Vue.js website: <https://vuejs.org/v2/guide/>

The walk you through the basics from Vue.js, that why there is no styling (focus on the code!).. :D

- [tutorial01](tutorial01) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial01/bin/index.html) <https://vuejs.org/v2/guide/#Declarative-Rendering> **1**
- [tutorial02](tutorial02) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial02/bin/index.html) <https://vuejs.org/v2/guide/#Conditionals-and-Loops> **1**
- [tutorial03](tutorial03) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial03/bin/index.html) <https://vuejs.org/v2/guide/#Handling-User-Input>
- [tutorial04](tutorial04) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial04/bin/index.html) <https://vuejs.org/v2/guide/#Composing-with-Components>


Then some tutorials from: <http://tutorialzine.com/2016/03/5-practical-examples-for-learning-vue-js/>

More complex example showing the power of Vue.js, and doing that with style :P

- [tutorial05](tutorial05) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial05/bin/index.html) (NavigationBar)
- [tutorial06](tutorial06) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial06/bin/index.html) (Inline Editor)
- [tutorial07](tutorial07) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial07/bin/index.html) (Order Form)
- [tutorial08](tutorial08) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial08/bin/index.html) (Instant Search)
- [tutorial09](tutorial09) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial09/bin/index.html) (Switchable Grid)


The next examples show the vue-router:


- [tutorial_router01](tutorial_router01) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial_router01/bin/index.html) <https://router.vuejs.org/en/essentials/getting-started.html>
- [tutorial_router02](tutorial_router02) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial_router01/bin/index.html) <https://github.com/vuejs/vue-router/blob/dev/examples/named-routes/app.js>

More complex templating with vue-resource assets loader:

- [tutorial_reddits](tutorial_reddits) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial_reddits/bin/index.html) <http://tutorialzine.com/2016/08/building-your-first-app-with-vue-js/>

Another router example:

Keep in mind that the tutorial is written in an older version of vue-router so it's a little rewritten (<https://vuejs.org/v2/guide/migration-vue-router.html>)

- [tutorial_router03](tutorial_router03) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial_router03/bin/index.html)
<https://mattstauffer.co/blog/getting-started-using-vues-vue-router-for-single-page-apps>


(**1**)
> Use `@:expose` to make sure you can use the console instructions
> And `public static var` to make sure you have access.
>
> The only difference is you start console command with `Main`.


# Difference

We try to stay as close a possible to the original lib, but their are some differences I will explain here.

# Context / namespace

In Vue.js, the `this` keyword has a different context and properties in callbacks like `methods`

In vue `this` points to the vm instance

```js
var app5 = new Vue({
	el: '#app-5',
	data: {
		message: 'Hello Vue.js!'
	},
	methods: {
		reverseMessage: function () {
			// this.message
			console.log(this.message);
		}
	}
});
```

That will not work in Haxe, because it has a different context.
We need to have the code transpiled to `this.xxx`.
There are currently 3 ways to do this:

- `trace(untyped this.message);`
- `trace(untyped __js__('this.message'));`
- `trace(js.Lib.nativeThis.message);`


```haxe
var app5 = new Vue({
	el: '#app-5',
	data: {
		message: 'Hello Vue.js!'
	},
	methods: {
		reverseMessage: function ()
			// this.message
			trace(untyped this.message);
			trace(untyped __js__('this.message'));
			trace(js.Lib.nativeThis.message);
		}
	}
});

```


# CheatSheet / copy_paste

Most of the time you can just copy paste JS into Haxe documents... And sometimes you need to make a little adjustmen. Check out this document: [copy&paste](https://github.com/MatthijsKamstra/haxejs/blob/master/haxejs/copy_paste.md)

But here are the stuff I ran into with these examples:

## Date

Most copy&paste stuff is easy fixed, so it this one.
But this is a different language decision

In Haxe you will create a [date](http://api.haxe.org/Date.html) with `new Date(year, month, day, hour, min, sec)`
In JS it will return the current date

```js
new Date ()
```

So use this in Haxe

```haxe
Date.now();
```

## Shorthand

The short-hand van Vue doesn't work...
Something like this is possible in Vue, but not in Haxe

```js
var router = new VueRouter({
	routes // short for routes: routes
});
```

To fix this just don't use the shorthand

```haxe
var router = new VueRouter({
	routes:routes
});
```


## const

> Constants are block-scoped, much like variables defined using the `let` statement. The value of a constant cannot change through re-assignment, and it can't be redeclared.

Just changed to `var` because Haxe is a strictly typed language we don't have that problem.

Which brings us to the variable name with all caps or starting with a Capital letter... not necessary but it will work.

```js
const User = {
  template: '<div>User</div>'
}
```

You can use the var name `User` with a cap, but in this case but nicer would be `user`

```haxe
var user = {
  template: '<div>User</div>'
}
```

## `'` vs `"` and `$`

Haxe lets you have variables in string with `$`, but only with single quotes!


```haxe
var temp = 3;
trace('$temp'); // 3
trace("$temp"); // $temp
```

Vue uses it for a different reason.

```js
const Bar = {
	template: '<div>This is Bar {{ $route.params.id }}</div>'
}
```

But because its done in a single quote string Haxe will expect a variable name `route`.
To fix this one just use double quotes

```haxe
var bar = {
	template: "<div>This is Bar {{ $route.params.id }}</div>"
};
```

Or change `$` into `$$` (which escapes it)

```js
var bar = {
	template: '<div>This is Bar {{ $$route.params.id }}</div>'
}
```

## ;

Okay .... Stupid but JavaScript is more flexible with this. Just follow the instructions from the Haxe compiler.
