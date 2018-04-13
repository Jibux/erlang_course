-module(my_genserv).

-export([start_link/0,init/1,handle_call/3,handle_cast/2,handle_info/2,terminate/2]).

-behaviour(gen_server).

start_link() ->
	gen_server:start_link({local, mon_gege}, ?MODULE, [], []).

init(_Arg) ->
	State = [],
	{ok,State}.

handle_call(pop,From,[H|T]=State) ->
	{reply,H,T}.

handle_cast({push,Elem}, State) ->
	{noreply,State++[Elem]}.

handle_info({push,Elem}, State) ->
	{noreply,State++[Elem]}.

terminate(Reason, State) ->
	ok.

