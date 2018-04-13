-module(my_super_sup).

-behaviour(supervisor).

-export([start_link/0,init/1]).


start_link() ->
    supervisor:start_link({local, mon_sup},?MODULE, []).

init(_Args) ->
    SupFlags = {one_for_one, 60, 60},
    ChildSpecs = [{gege,
                    {my_genserv, start_link, []},
                    permanent,
                    brutal_kill,
                    worker,
                    [my_genserv]}],
    {ok, {SupFlags, ChildSpecs}}.

