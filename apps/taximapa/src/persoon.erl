%%%-------------------------------------------------------------------
%% @doc taximapa top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(persoon).


%% API
-export([start/0]).
-export([init/0]).

   
start() ->
   Pid = spawn(persoon, init, []),
   Pid.

init() ->
   loop().

loop() ->
   receive
      _ ->
          io:format("persoon:hallo~n"),
          loop()
   end.
