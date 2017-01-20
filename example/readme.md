# These examples follow

<https://vuejs.org/v2/guide/>


Use `@:expose` to make sure you can use the console instructions
And `public static var` to make sure you have access.

The only difference is you start console command with `Main`.

- tutorial01 <https://vuejs.org/v2/guide/#Declarative-Rendering>
- tutorial02 <https://vuejs.org/v2/guide/#Conditionals-and-Loops>



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