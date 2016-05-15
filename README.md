![Elixir image](http://elixir-lang.org/images/logo/logo.png)

# MyElixir
This repository hosts the source files of my endeavors with Elixir. I have tried to document all the exercises I have done with Elixir along with the basic concepts obtained from various tutorials on the internet.  

## What really is Elixir?

Erlang VM powered dynamic, functional programming language that boasts to be:

1. Distributed
2. Fault-Tolerant
3. Soft-Real-Time
4. Hot-Code-Swapped.

## How to run Code?

1. Run it as a script: `elixir <name>.exs` and call functions(if not already called in script).
2. Interactively executein shell: enter `iex` and type code.
3. Compile modules using: `elixirc` and run `iex`.

From a php, python background, I like to make scripts with function calls embedded, so that I get to see output without any additional steps. Hence, I will try to create scripts this way all through my exercises and try to avoid shell execution as much as possible.

## Hello World!!
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



## Refernces

1. https://learnxinyminutes.com/docs/elixir/
2. https://github.com/elixir-lang/elixir
