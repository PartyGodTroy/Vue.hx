# Tutorials

Follow these instructions <https://vuejs.org/v2/guide/>


- [tutorial01](https://github.com/MatthijsKamstra/Vue.hx/tree/master/example/tutorial01) [show](http://htmlpreview.github.io/?https://github.com/MatthijsKamstra/Vue.hx/blob/master/example/tutorial01/bin/index.html) <https://vuejs.org/v2/guide/#Declarative-Rendering> *
- tutorial02 <https://vuejs.org/v2/guide/#Conditionals-and-Loops> *
- tutorial03 <https://vuejs.org/v2/guide/#Handling-User-Input>
- tutorial04 <https://vuejs.org/v2/guide/#Composing-with-Components>

<http://tutorialzine.com/2016/03/5-practical-examples-for-learning-vue-js/>

- tutorial05 (NavigationBar)
- tutorial06 (Inline Editor)
- tutorial07 (Order Form)
- tutorial08 (Instant Search) // not working ....
- tutorial09 (Switchable Grid)


<https://router.vuejs.org/en/essentials/getting-started.html>

- tutorial_router01
- tutorial_router02 <https://github.com/vuejs/vue-router/blob/dev/examples/named-routes/app.js>



<https://mattstauffer.co/blog/getting-started-using-vues-vue-router-for-single-page-apps>

- tutorial_router



*
> Use `@:expose` to make sure you can use the console instructions
> And `public static var` to make sure you have access.
>
> The only difference is you start console command with `Main`.

# Difference


# Context / namespace
In Vue.js, the `this` keyword has a different context and properties in callbacks like `methods`

// `this` points to the vm instance

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
We need to have `this.xxx`, and we use a little hack: `This.xxx`.
There are currently 3 ways to do this:

- `trace(untyped This.message);`
- `trace(Reflect.field(This, 'message'));`
- `trace(untyped __js__('this.message'));`

```haxe
var app5 = new Vue({
	el: '#app-5',
	data: {
		message: 'Hello Vue.js!'
	},
	methods: {
		reverseMessage: function ()
			// this.message
			trace(untyped This.message);
			trace(Reflect.field(This, 'message'));
			trace(untyped __js__('this.message'));
		}
	}
});

```


# CheatSheet / copy_paste

This document helps je: [copy&paste](https://github.com/MatthijsKamstra/haxejs/blob/master/haxejs/copy_paste.md)

But here are the once I ran into this project


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

Remember the var name can also be `User` in this case but nicer would be `user`

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



This problem is more visible in the `router` with the use of templates

```js
new Vue({
	router,
	template: '
		<div id="app">
		<h1>Named Routes</h1>
		<p>Current route name: {{ $route.name }}</p>
		<ul>
			<li><router-link :to="{ name: \'home\' }">home</router-link></li>
			<li><router-link :to="{ name: \'foo\' }">foo</router-link></li>
			<li><router-link :to="{ name: \'bar\', params: { id: 123 }}">bar</router-link></li>
		</ul>
		<router-view class="view"></router-view>
		</div>'
}).$mount('#app')
```

would become in Haxe

- change template to double quotes: " .... "
- escape double quotes `"`

```haxe
new Vue({
	router:router,
	template: "
		<div id=\"app\">
		<h1>Named Routes</h1>
		<p>Current route name: {{ $route.name }}</p>
		<ul>
			<li><router-link :to=\"{ name: 'home' }\">home</router-link></li>
			<li><router-link :to=\"{ name: 'foo' }\">foo</router-link></li>
			<li><router-link :to=\"{ name: 'bar', params: { id: 123 }}\">bar</router-link></li>
		</ul>
		<router-view class=\"view\"></router-view>
		</div>"
}).$mount('#app');
```


## ;

Okay .... Stupid but JavaScript is more flexible with this. Just follow the instructions from the Haxe compiler.