-module(helloModule).
-compile(export_all).

hello()->
  io:format("~s~n",["Ajay says, Hello!!"]).
