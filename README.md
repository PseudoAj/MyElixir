![Elixir image](http://elixir-lang.org/images/logo/logo.png)

# 1. MyElixir
This repository hosts the source files of my endeavors with Elixir. I have tried to document all the exercises I have done with Elixir along with the basic concepts obtained from various tutorials on the internet.

P.S. I have used my name `ajay` throughout my examples and please bare with it.

## 2. What really is Elixir?

Erlang VM powered dynamic, functional programming language that boasts to be:

1. Distributed
2. Fault-Tolerant
3. Soft-Real-Time
4. Hot-Code-Swapped.

## 3. How to run Code?

1. Run it as a script: `elixir <name>.exs` and call functions(if not already called in script).
2. Interactively executein shell: enter `iex` and type code.
3. Compile modules using: `elixirc` and run `iex`.

From a php, python background, I like to make scripts with function calls embedded, so that I get to see output without any additional steps. Hence, I will try to create scripts this way all through my exercises and try to avoid shell execution as much as possible.

## 4. Hello World!! (Before anything else)
So my template for the rest of the exercises is to encapsulate my functions inside the module and call the functions to get them executed. Basic flow is explained below:

* Enter the following code and save it as [helloModule.exs](https://github.com/PseudoAj/MyElixir/blob/master/HelloWorld/elixrHelloWorld/helloModule.exs):

```elixir
#This is a test module as a script
# helloModule.exs
defmodule HelloModule do                          #define a module
  def hello do                                    #define a function in module
    IO.puts "Ajay says, hello\n From Elixir"      #Print the statement
  end
end

# call the Hello Module
HelloModule.hello()
```

* Run the command `elixir helloModule.exs` and you should get following output:

```
Ajay says, hello
 From Elixir
```

## 5. Basics
This section covers some of the basics concepts for any programming language. The subsection each deal with different categories of language bindings.

### 5.1. Data types
Elixir supports following data types:

* **Integer, Float and Boolean: **Default data type and all the arthematic functions are also supported along with it.
```elixir
iex(2)> i 10
Term
  10
Data type
  Integer
Reference modules
  Integer
```
Also, it supports binary, octal and hexadecimal representations:
```elixir
iex(1)> i 0x1F
Term
  31
Data type
  Integer
Reference modules
  Integer
```
Float values are very standard in all languages too:
```elixir
iex(5)> i 3.5
Term
  3.5
Data type
  Float
Reference modules
  Float
```
Boolean values such as true/false is supported by elixir. Also, supports a bunch of predicate functions to validate the data type.
```elixir
iex(1)> is_boolean(true)
true
iex(2)> is_boolean(1)   
false
iex(3)> is_boolean(false)
true
iex(4)> is_boolean(0)    
false
```
* **Atom: **This is special data type with elixir. Atoms are exciting data type to work with. They are basically constants which have same value and name. If you define `:ajay@github` as an atom then its name and value is `ajay@github`. Interestingly, :true is an atom which has a value true. Let's check it:
```elixir
iex(2)> is_boolean(:true)
true
```
* **String, list and tuple: **So Elixir supports series of characters, list; implemented as a linked list and tuples.
Firstly, Strings are supported in Elixir along with String interpolation(you can change string elements using variables), escape sequences(supports /n,/r). Interestingly, they are represented as binary objects hence:
```elixir
iex(4)> is_binary("ajay")
true
```
Lists are implemented as linked lists in Elixir. Similar to python, the lists as enclosed with square brackets `[1,2,3,4,5]`; one special feature with Elixir is it treats first element as the head and rest as tail:
```elixir
iex(5)> list = [1,2,3,4,5]
[1, 2, 3, 4, 5]
iex(6)> hd(list)
1
iex(7)> tl(list)
[2, 3, 4, 5]
```
Also, single quotes imply that it's a char list and double quotes indicate that it is a string:
```elixir
iex(8)> i 'ajay'
Term
  'ajay'
Data type
  List
Description
  This is a list of integers that is printed as a sequence of characters
  delimited by single quotes because all the integers in it represent valid
  ASCII characters. Conventionally, such lists of integers are referred to as
  "char lists" (more precisely, a char list is a list of Unicode codepoints,
  and ASCII is a subset of Unicode).
Raw representation
  [97, 106, 97, 121]
Reference modules
  List
iex(9)> i "ajay"
Term
  "ajay"
Data type
  BitString
Byte size
  4
Description
  This is a string: a UTF-8 encoded binary. It's printed surrounded by
  "double quotes" because all UTF-8 encoded codepoints in it are printable.
Raw representation
  <<97, 106, 97, 121>>
Reference modules
  String, :binary
```
Tuple is another data type supported by Elixir, it is a just like List but it can handle heterogenous data types. Main difference from List and Tuple is the fact that List is implemented as linked List and requires a linear time to traverse but quick(big-oh(1)) to insert and Tuple is stored in contiguous memory so the accessing is fast. Bottom line: use lists for data that needs frequent updates and Tuples for data that needs frequent accessing. Example:
```elixir
iex(13)> i {:ajay,"Krishna",'Teja'}
Term
  {:ajay, "Krishna", 'Teja'}
Data type
  Tuple
Reference modules
  Tuple
```

### 5.2. Operators

## Refernces

1. https://learnxinyminutes.com/docs/elixir/
2. https://github.com/elixir-lang/elixir
3. https://elixirschool.com/
4. http://exercism.io/languages/elixir
5. https://github.com/petpartnersllc/code_sample
6. http://elixir-lang.org/getting-started/basic-types.html
