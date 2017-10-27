%%%-------------------------------------------------------------------
%% @doc taximapa top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(auto).


%% API
-export([start/0]).
-export([init/0]).

   
start() ->
   Pid = spawn(auto, init, []),
   Pid.

init() ->
   loop().

loop() ->
   receive
      _ ->
          io:format("auto:hallo~n"),
          loop()
   end.
