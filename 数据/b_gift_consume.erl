% @Author: anchen
% @Date:   2017-02-20 15:31:26
% @Last Modified by:   anchen
% @Last Modified time: 2017-02-20 15:32:02


-module(b_gift_consume).
-export([get/1]).
get(1)->
    {100,0};
get(2) ->
    {1000,0};
get(3) ->
    {100,0};
get(4) ->
    {1000,0};
get(5) ->
    {0,10};
get(6) ->
    {0,100};
get(7) ->
    {0,10};
get(8) ->
    {0,100};
get(_) ->
    {0, 0}.