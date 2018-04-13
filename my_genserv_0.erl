-module(my_genserv).

-export([start_link/0,init/1,handle_call/3,handle_cast/2,handle_info/2,terminate/2]).

-behaviour(gen_server).

start_link() ->
	gen_server:start_link({local, mon_gege}, ?MODULE, [], []).

init(_Arg) ->
	State = [],
	{ok,State}.

handle_call(Args,From,State) ->
	Reply = "J'aime les frites",
	NewState = [],
	{reply,Reply,NewState}.

handle_cast(Args, State) ->
	NewState = "New state",
	{noreply,NewState}.

handle_info(Info, State) ->
	NewState = "New state info",
	{noreply,NewState}.

terminate(Reason, State) ->
	ok.
