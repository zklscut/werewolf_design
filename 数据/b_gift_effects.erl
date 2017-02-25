% @Author: anchen
% @Date:   2017-02-20 15:31:26
% @Last Modified by:   anchen
% @Last Modified time: 2017-02-20 15:32:02


-module(b_gift_effects).
-export([get/1]).
get(10)->
    1;
get(100) ->
    1;
get(-10) ->
    1;
get(-100) ->
    1;
get(100) ->
    1;
get(-1000) ->
    1;
get(-100) ->
    1;
get(-1000) ->
    1;
get(_) ->
    1.