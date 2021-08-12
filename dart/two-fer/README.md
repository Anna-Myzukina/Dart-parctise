# Two Fer

`Two-fer` or `2-fer` is short for two for one. One for you and one for me.

Given a name, return a string with the message:

```text
One for X, one for me.
```

Where X is the given name.

However, if the name is missing, return the string:

```text
One for you, one for me.
```

Here are some examples:

|Name    |String to return 
|:-------|:------------------
|Alice   |One for Alice, one for me. 
|Bob     |One for Bob, one for me.
|        |One for you, one for me.
|Zaphod  |One for Zaphod, one for me.


To run the tests:

```sh
$ pub run test
```

For more detailed info about the Dart track see the [installation](http://exercism.io/languages/dart/installation) and [testing](http://exercism.io/languages/dart/tests) pages.

## Source

[https://github.com/exercism/problem-specifications/issues/757](https://github.com/exercism/problem-specifications/issues/757)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.


## If you get stuck please check the answer below:
### Reasonable solutions
The most simple solution is to set the default value for an optional parameter to "you" and use string interpolation:

    String twofer([String name = "you"]) {
      return "One for $name, one for me.";
    }
    
Solution using an expression-bodied method:

    String twofer([String name = "you"]) => "One for $name, one for me.";
    
### Common suggestions
If they are using overloaded methods, suggest to use a single method with an optional parameter.
Instead of using an if-statement, suggest to use a single expression. This will force the student to remove any duplication in the code.
Suggest using string interpolation over string concatenation because it is the recommended practice by the Dart development team and that it is a common practice within the Dart community.
If they are using null as the default value, suggest to use "you" instead.
It might be useful to suggest writing the twofer method as an expression-bodied method (also called arrow syntax or => expr), as it is perfect for these kinds of small methods.
One best practice is to avoid changing the value of the function parameters. This has the main benefit of keeping things immutable: by not overwriting the parameter value, you know its value on every single line in the method: namely its original value. This greatly helps in figuring out the state of a system.
