-ifndef(FIGHT_HRL).
-define(FIGHT_HRL, true).

-define(DUTY_DAOZEI, 1).    %%盗贼
-define(DUTY_QIUBITE, 2).   %%丘比特
-define(DUTY_HUNXUEER, 3).  %%混血儿
-define(DUTY_SHOUWEI, 4).   %%守卫
-define(DUTY_LANGREN, 5).   %%狼人
-define(DUTY_NVWU, 6).      %%女巫
-define(DUTY_YUYANJIA, 7).  %%预言家
-define(DUTY_LIEREN, 8).    %%猎人
-define(DUTY_CUNZHANG, 9).  %%村长
-define(DUTY_BAICHI, 10).   %%白痴
-define(DUTY_PINGMIN, 11).  %%平民
-define(DUTY_NONE, 12).     %%第三方,需要杀光所有人
-define(DUTY_BAILANG, 13).  %%白狼

-define(DUTY_TYPE_SPECIAL, 1).  %%特殊身份
-define(DUTY_TYPE_SHENMIN, 2).  %%神民

-define(DUTY_LIST_SPECIAL, [?DUTY_DAOZEI, ?DUTY_QIUBITE,?DUTY_HUNXUEER]).
-define(DUTY_LIST_SHENMIN, [?DUTY_NVWU, ?DUTY_YUYANJIA, ?DUTY_LIEREN, ?DUTY_BAICHI, ?DUTY_SHOUWEI]).

-define(TURN_UP, 0).
-define(TURN_DOWN, 1).

-define(OP_PART_JINGZHANG, 1001). %%參選警長
-define(OP_XUANJU_JINGZHANG, 1002). %%選舉警長
-define(OP_JINGZHANG_ZHIDING, 1003). %%警长指定
-define(OP_FAYAN, 1004). %%发言
-define(OP_TOUPIAO, 1005). %%投票驱逐
-define(OP_QUZHU, 1006). %%被驱逐
-define(OP_PART_FAYAN, 1007). %%竞选发言
-define(OP_GUIPIAO, 1008). %%归票
-define(OP_DEATH_FAYAN, 1009). %%死亡发言
-define(OP_QUZHU_FAYAN, 1010). %%驱逐发言
-define(OP_LAPIAO_FAYAN, 1011). %%拉票发言
-define(OP_TOUPIAO_MVP, 1012). %%投票mvp
-define(OP_TOUPIAO_CARRY, 1013). %%投票carry
-define(OP_SKILL_OFFLINE, 1014). %%离线玩家操作时长

-define(FAYAN_OP_LIST, [?OP_FAYAN, ?OP_PART_FAYAN, ?OP_DEATH_FAYAN, ?OP_QUZHU_FAYAN, ?OP_LAPIAO_FAYAN]).

-define(OP_SKILL_CHANGE_JINGZHANG, 2001).
-define(OP_SKILL_LIEREN, 2002).
-define(OP_SKILL_BAICHI, 2003).
-define(OP_SKILL_BAILANG, 2004).
-define(OP_SKILL_LANGREN, 2005).
-define(OP_SKILL_EIXT_PART_JINGZHANG, 2006).
-define(OP_SKILL_D_DELAY, 2007). %%默认延时操作
-define(OP_SKILL_END_FIGHT, 2008). %%结束战斗
-define(OP_SKILL_LOVER_DIE, 2009). %%情侣一方死亡带走另外一方


-define(XUANJU_TYPE_JINGZHANG, 1).
-define(XUANJU_TYPE_QUZHU, 2).
-define(XUANJU_TYPE_MVP, 3).
-define(XUANJU_TYPE_CARRY, 4).

-define(TIMER_TIMEOUT, timeout).

-define(JINXXUAN_TIMER_TIMEOUT, jingxuan_timeout).

-define(NVWU_NONE, 0).
-define(NVWU_DUYAO, 1).
-define(NVWU_JIEYAO, 2).

-define(DIE_TYPE_LANGRNE, 1).
-define(DIE_TYPE_NVWU, 2).
-define(DIE_TYPE_QUZHU, 3).
-define(DIE_TYPE_BOOM, 4).
-define(DIE_TYPE_BAILANG, 5).
-define(DIE_TYPE_LIEREN, 6).
-define(DIE_TYPE_LOVER, 7).

-define(MFIGHT, #{room_id => 0,
                  room_name => "",%%房间名称
                  duty_list => [],%%职责列表
                  player_list => [], %%玩家列表
                  seat_player_map => #{},%% #{seat_id, player_id}
                  player_seat_map => #{},%% #{player_id, seat_id}
                  offline_list => [],    %% seat_id
                  out_seat_list => [],   %% 出局列表 seat_id
                  seat_duty_map => #{},  %% #{seat_id, 职责}
                  duty_seat_map => #{},  %% #{duty_id, [seat_id]}
                  wait_op => 0,          %% 等待的操作
                  wait_op_list => [],    %% 等待中的操作
                  wait_op_attack_data => [], %%操作附近数据
                  status => 0,           %% 当前游戏状态
                  game_state =>  0,      %% 第几天晚上
                  game_round =>  1,      %% 第几轮
                  lover => [],           %% 情侣
                  lover_kill => 0,        %% 被链子弄死的玩家
                  shouwei => 0,          %% 守卫的id
                  nvwu => {0, 0},        %% 女巫操作
                  nvwu_left => [1, 2],   %% 女巫剩余的药
                  langren => 0,          %% 狼人击杀的目标
                  bailang => 0,          %% 白狼自爆带走的人
                  hunxuer => 0,          %% 混血儿是否帮狼人
                  daozei => [],          %% 盗贼可选择的
                  yuyanjia_op => [],     %% 预言家验过的人
                  parting_jingzhang =>[], %% 正在执行参选警长的人
                  part_jingzhang => [],  %% 參與選舉警長
                  exit_jingzhang => [],  %% 参选警长退水的人
                  xuanju_draw_cnt => 0,  %% 选举平局次数
                  jingzhang => 0,        %% 选举的警长
                  jingzhang_op => 0,     %% 警长操作
                  fayan_turn => [],      %% 发言顺序
                  die => [],             %% 死亡玩家
                  quzhu => 0,            %% 驱逐的玩家
                  skill_seat => 0,       %% 发动技能位置
                  baichi => 0,           %% 白痴id
                  lieren_kill => 0,      %% 猎人杀死
                  last_op_data => #{},   %% 上一轮操作的数据, 杀了几号, 投了几号等等
                  daozei_seat => 0,      %%盗贼的位置
                  player_num => 0,       %%玩家总数量
                  do_police_select => 0, %%是否选举过警长
                  langren_boom => 0,     %%狼人自爆过
                  show_nigth_result => 0,%%是否公布过死亡结果
                  quzhu_op => 0,         %%是否进入过驱逐驱逐操作
                  flop_list => [],       %%翻牌列表
                  flop_lieren => 0,      %%猎人是否已经翻牌
                  nv_kill => 0,          %%女巫带走的人
                  safe_night => 1,       %%平安夜
                  safe_day => 1,         %%平安日
                  skill_d_delay => 0,    %%释放技能是否做过默认延时
                  skill_die_list => [],  %%释放技能的死亡列表
                  mvp => 0,              %%谁获得mvp      
                  carry => 0,            %%谁获得carry
                  cur_skill => 0,        %%当前释放的技能
                  leave_player => [],    %%战斗中离开玩家
                  winner => [],          %%胜利方
                  mvp_party => [],       %%参选mvp的人
                  mvp_draw_cnt => 0,     %%mvp重投次数      
                  carry_party =>[],      %%参选carry的人
                  carry_draw_cnt => 0,    %%carry重投次数
                  speak_id => 0,          %%
                  op_timer_start => 0,   %%操作开始时间
                  op_timer_normal_dur => 0, %%正常操作持续时间
                  op_timer_use_dur => 0,   %%操作当前持续时间
                  day_notice_die => [] %%白天通知了玩家已经死亡的人(断线重连用)
                  }).

-endif.

