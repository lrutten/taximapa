help:
	echo "rebar3 deps"
	echo "rebar3 compile"
	echo "rebar3 release"

deps:
	rebar3 deps

compile:
	rebar3 compile

release:
	rebar3 release

run:
	_build/default/rel/taximapa/bin/taximapa console

clean:
	rebar3 clean
	rm -Rvf _build


