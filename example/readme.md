# Tutorials

Follow these instructions <https://vuejs.org/v2/guide/>


- tutorial01 <https://vuejs.org/v2/guide/#Declarative-Rendering> *
- tutorial02 <https://vuejs.org/v2/guide/#Conditionals-and-Loops> *
- tutorial03 <https://vuejs.org/v2/guide/#Handling-User-Input>


*
> Use `@:expose` to make sure you can use the console instructions
> And `public static var` to make sure you have access.
>
> The only difference is you start console command with `Main`.

# Difference


# Context / namespace
In Vue.js, the `this` keyword has a different context and properties in callbacks like `methods`

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

most copy paste stuff is easy fixed, so it this one.
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



## ;

Okay .... Stupid but JavaScript is more flexible with this. Just follow the instructions from the Haxe compiler.