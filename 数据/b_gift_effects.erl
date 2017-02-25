% @Author: anchen
% @Date:   2017-02-20 15:31:26
% @Last Modified by:   anchen
% @Last Modified time: 2017-02-20 15:32:02


-module(b_gift_effects).
-export([get/1]).
get(1)->
    10;
get(2) ->
    100;
get(3) ->
    -10;
get(4) ->
    -100;
get(5) ->
    100;
get(6) ->
    -1000;
get(7) ->
    -100;
get(8) ->
    -1000;
get(_) ->
    1.