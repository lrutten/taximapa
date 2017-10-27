%%%-------------------------------------------------------------------
%% @doc taximapa top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(taximapa).

-export([start/0]).
-export([init/0, getPid/1]).
-export([loop/1]).

%% API
getPid(Naam) ->
   Ref = make_ref(),
   taximapa ! {get, Ref, Naam, self()},
   receive
      {naam, Ref, Pid} ->
         Pid
   end.
   
entiteiten() ->
   [
      {auto,    "BMW",   []},
      {auto,    "VW",    []},
      {persoon, "Jan",   ["Piet", "Joris"]},
      {persoon, "Piet",  []},
      {persoon, "Joris", []}
   ].

pidVan([], _Naam) ->
   {error};
pidVan([{_Type, Naam, _Kindn, Pid}|_Rest], Naam) ->
   {ok, Pid};
pidVan([{_Type, _Naam2, _Kindn, _Pid}|Rest], Naam) ->
   pidVan(Rest, Naam).

maak_pids() ->
   [
      {Mod, Naam, Kindn, Mod:start()}
      ||
      {Mod, Naam, Kindn} <- entiteiten()
   ].
   
start() ->
   Pid = spawn(taximapa, init, []),
   register(taximapa,Pid),
   {ok, Pid}.

init() ->
   loop(maak_pids()).

loop(Ents) ->
   receive
      {get, Ref, Naam, Sender} ->
         Sender ! {naam, Ref, pidVan(Ents, Naam)},
         loop(Ents);
      _ ->
          io:format("hallo~p~n", [Ents]),
          loop(Ents)
   end.
