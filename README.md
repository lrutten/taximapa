# `taximapa`

This Erlang/OTP example is meant as a starter for the Taxi Mama Papa problem.
The project is to be built as a `rebar3` release.

## Compile and run

Use the following commands:

~~~~
$ rebar3 deps
~~~~

~~~~
$ rebar3 compile
~~~~

~~~~
$ rebar3 release
~~~~

~~~~
$ _build/default/rel/taximapa/bin/taximapa console
~~~~

## Explanation

This example demomstrates a technique by which it is possible
to create several processess while starting a OTP release.

The initial list of entities is extended with pids of the corresponding
process. At the start the initial list looks this way:

~~~~
entiteiten() ->
   [
      {auto,    "BMW",   []},
      {auto,    "VW",    []},
      {persoon, "Jan",   ["Piet", "Joris"]},
      {persoon, "Piet",  []},
      {persoon, "Joris", []}
   ].
~~~~

Each tuple has 3 elements. After starting the release the pid is added in each tuple.

