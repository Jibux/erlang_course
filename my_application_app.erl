-module(my_application_app).

-behaviour(application).


-export([start/2, stop/1]).

start(_Type, _Args) ->
	my_super_sup:start_link().
stop(_State) ->
	ok.

