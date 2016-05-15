#This is a test module as a script
# helloModule.exs
defmodule HelloModule do                          #define a module
  def hello do                                    #define a function in module
    IO.puts "Ajay says, hello\n From Elixir"      #Print the statement
  end
end

# call the Hello Module
HelloModule.hello()
