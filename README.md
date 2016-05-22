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

* **Integer, Float and Boolean:** Default data type and all the arthematic functions are also supported along with it.
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
* **Atom:** This is special data type with elixir. Atoms are exciting data type to work with. They are basically constants which have same value and name. If you define `:ajay@github` as an atom then its name and value is `ajay@github`. Interestingly, :true is an atom which has a value true. Let's check it:
```elixir
iex(2)> is_boolean(:true)
true
```
* **String, list and tuple:** So Elixir supports series of characters, list; implemented as a linked list and tuples.
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
In addition to the basic arthematic operators`(+,-,/,*)` elixir supports `++`, `--` for list management similar to the `<>` for string concatenation. Following code illustrates:
```elixir
iex(1)> [10,3,4]++[1,2,3]
[10, 3, 4, 1, 2, 3]
iex(2)> "Hello"<>", Ajay"
"Hello, Ajay"
```
Also, one interesting differentiation is using `and, or and not` operators for the Boolean type and `||, && and !` for arguments of different type. Example:
```elixir
iex(1)> true and false
false
iex(2)> true or false
true
iex(3)> !false       
true
iex(4)> 1 && 0
0
iex(5)> 1 || 0
1
```
Addtionaly, all the comparision operators`(=,==,===,<,>,<=,>=)` are supported. Here, the interesting concept is to compare different data types, Elixir follows the following priority: `number < atom < reference < functions < port < pid < tuple < list < bit string`. Another important point to note is that `=` will do a pattern matching (Left hand side matched against right hand side) in Elixir not assignment. Example:
```elixir
iex(1)> [var1,var2,var3]=[:ajay,"Krishna",10]
[:ajay, "Krishna", 10]
iex(2)> var1
:ajay
iex(3)> var2
"Krishna"
iex(4)> :ajay=var1
:ajay
iex(5)> [head|tail]=["Ajay","Krishna","Teja","Kavuri"]
["Ajay", "Krishna", "Teja", "Kavuri"]
iex(6)> head
"Ajay"
iex(7)> :Ajay=head
** (MatchError) no match of right hand side value: "Ajay"
```
Lastly, two more interesting operators are pin operator (`^`) and `_` operator. The `^` operator is used to pattern match against the existing variable rather than rebinding it to a new variable and `_` operator is to bind the residual of the pattern matching. Both are illustrated below:
```elixir
iex(1)> var1 = "Ajay"
"Ajay"
iex(2)> [^var1,var2]=["Ajay",:Krishna]
["Ajay", :Krishna]
iex(3)> [^var1,var2]=[1,:Krishna]     
** (MatchError) no match of right hand side value: [1, :Krishna]
iex(4)> [head|_]=["Ajay",:Krishna,10]    
["Ajay", :Krishna, 10]
iex(5)> _
** (CompileError) iex:4: unbound variable _

```

### 5.3. Control flow
The control flow can be achieved using following statements:
* **if/else:** The standard conditional statement in many language the basic syntax:
```elixir
if <condition> do
  #Logic
else
  #Other Logic
end
```

* **Unless:** Works as the negation for the if/else case. Basic usage:
```elixir
iex(2)> unless is_boolean("ajay") do
...(2)> "This works"                
...(2)> end                         
"This works"
```

* **case:** Case statement is similar to the switch statement in `c` programming language. It can be matched against multiple conditions. Example:
```elixir
iex(4)> case {:ajay,:tom,:harry} do
...(4)> :jerry ->                  
...(4)> "This won't execute"       
...(4)> {:ajay,:tom,x} ->          
...(4)> "Called us?"               
...(4)> _ ->                       
...(4)> "I am default"             
...(4)> end
"Called us?"
```

* **cond:** This statement allows us to squeeze multiple conditional statements into one, if multiple conditions are true the first one gets executed. Following example illustrates the usage:
```elixir
iex(5)> cond do
...(5)> is_boolean(true)->
...(5)> "I am first condition that is true"
...(5)> 50*2==100->
...(5)> "I am second statement that is true"
...(5)> 1+2==4->
...(5)> "I am not true at all"
...(5)> true->
...(5)> "I am default true"
...(5)> end
"I am first condition that is true"
```


## References

1. https://learnxinyminutes.com/docs/elixir/
2. https://github.com/elixir-lang/elixir
3. https://elixirschool.com/
4. http://exercism.io/languages/elixir
5. https://github.com/petpartnersllc/code_sample
6. http://elixir-lang.org/getting-started/basic-types.html
7. https://excasts.com/
