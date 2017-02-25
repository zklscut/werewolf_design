% @Author: anchen
% @Date:   2017-02-20 15:31:26
% @Last Modified by:   anchen
% @Last Modified time: 2017-02-20 15:32:02


-module(b_exp).
-export([get/1]).
get(1)->
    1000;

get(2) ->
    2000;

get(_) ->
    999999999.