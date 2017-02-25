-module(b_fight_wait_op).
-export([get/1]).
get(state_toupiao)->
	6000;
get(_) ->
    15000.