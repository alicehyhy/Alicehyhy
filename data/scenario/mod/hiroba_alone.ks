

*hiroba
[cm]
[eval exp="f.aurelia_wait=0"]
[eval exp="f.act_al=0"]
[eval exp="f.sachi_wait=0"]
[eval exp="f.akemi_wait=0"]
[eval exp="f.rui_wait=0"]
[bgm_ST][black][bg_town][set_weather][act_win_stand]
#
Tôi dừng lại bên đài phun nước giữa quảng trường[p]
[jump target="*choice"]

*re
[cm]
[mod_win st="o/win/out_win.png" ]
[chara_mod name="other" time="10" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 42 + 1);
[endscript]
[jump  target="*hiroba_lead" ]



*choice
[cm]
[if exp="f.sin_t>=0"][else]
[jump target="*go_home"][endif]
[eval exp="f.act_al=f.act_al+1"]
[if exp="f.thoi_tiet==1 && f.act_al>=0"]
[eval exp="f.act=f.act+1" ][eval exp="f.act_al=0"]
[elsif exp="f.act_al>=3"]
[eval exp="f.act=f.act+1" ][eval exp="f.act_al=0"]
[endif]
[bg_town][set_weather]
[if exp="f.act>=5"][free_layermode time="100" wait="false" ][endif]
#
[if exp="f.act==6 && f.act_al>=2 || f.thoi_tiet==1 && f.act>=6" ]

(Dần dần, trời cũng bắt đầu tối.)[p]
[jump  target="*go_home" ]
[endif]

[mod_win st="o/win/out_win.png" ]
[set_time]
[if exp="f.act>=4"]
[button  storage="act_alone/shop_night.ks"  target="*shop"  graphic="s_menu/shop.png"  x="845"  y="400" ]
[elsif exp="f.sachi_date>=1 && f.act<=4"]
[button  storage="mod/shop_sachi.ks"  target="*shop"  graphic="s_menu/shop.png"  x="845"  y="400" ]
[endif]
[if exp="f.act<=4" ]
[button  storage="act_alone/cafe_alone.ks"  target="*cafe"  graphic="s_menu/cafe.png"  x="845"  y="320" ]
[endif]
;[button  storage="market.ks"  target="*market"  graphic="s_menu/market.png"  x="845"  y="240" ]
[button  target="*re"  graphic="s_menu/stay_hiroba.png"  x="845"  y="160" ]
[button  target="*go_home"  graphic="s_menu/go_home.png"  x="845"  y="480" ]
[s]

*go_home
[cm]
[eval exp="f.sachi_wait=0"]
[eval exp="f.akemi_wait=0"]
[eval exp="f.rui_wait=0"]
[eval exp="f.aurelia_wait=0"]
[mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[stop_bgm]
#
Và như vậy, đã kết thúc một ngày.[p]
[eval exp="f.out=1"][eval exp="f.act_al=0"]
[black]…[p][eval exp="f.last_act='non'"]
[if exp="f.act>=5"]
[jump storage="act_alone/out_alone.ks" target="*back_home_n"][else]
[jump storage="act_alone/out_alone.ks" target="*back_home"][endif]


*hiroba_lead
[cm]
[random_100]
;[emb exp="f.r"][p]
[if exp="f.aurelia_sex=='yet' && f.r<=50 && f.act>=5"]
[jump target="*hiroba_lead_"]
[elsif exp="f.aur_cafe=='feeling' && f.r>=20 && f.act>=5"]
[jump target="*shopx"][else]
[jump target="*hiroba_lead_"][endif]

*shopx
[if exp="f.thoi_tiet==1 || f.thoi_tiet==2"]
[jump target="*hiroba_aur_rain"]
[elsif exp="f.thơi_tiet==3 || f.thoi_tiet==4"]
[jump target="*hiroba_aur_snow"]
[elsif exp="f.mua<=3 && f.r<=70"]
[jump target="*hiroba_aur_rain"]
[elsif exp="f.mua>=4 && f.r>=60"]
[jump target="*hiroba_aur_snow"]
[else][jump target="*hiroba_lead_"][endif]

*hiroba_lead_
#
;[jump  target="*hiroba34" ]
;[emb exp="f.talk"][p]
[if exp="f.talk==1" ][jump  target="*hiroba22" ]
[elsif exp="f.talk==2" ][jump  target="*hiroba23" ]
[elsif exp="f.talk==3" ][jump  target="*hiroba24" ]
[elsif exp="f.talk==4" ][jump  target="*hiroba4" ]
[elsif exp="f.talk==5" ][jump  target="*hiroba25" ]
[elsif exp="f.talk==6" ][jump  target="*hiroba6" ]
[elsif exp="f.talk==7" ][jump  target="*hiroba7" ]
[elsif exp="f.talk==8" ][jump  target="*hiroba8" ]
[elsif exp="f.talk==9" ][jump  target="*hiroba29" ]
[elsif exp="f.talk==10" ][jump  target="*hiroba10" ]
[elsif exp="f.talk==11" ][jump  target="*hiroba11" ]
[elsif exp="f.talk==12" ][jump  target="*hiroba12" ]
[elsif exp="f.talk==13" ][jump  target="*hiroba13" ]
[elsif exp="f.talk==14" ][jump  target="*hiroba27" ]
[elsif exp="f.talk==15" ][jump  target="*hiroba15" ]
[elsif exp="f.talk==16" ][jump  target="*hiroba16" ]
[elsif exp="f.talk==17" ][jump  target="*hiroba17" ]
[elsif exp="f.talk==18" ][jump  target="*hiroba28" ]
[elsif exp="f.talk==19" ][jump  target="*hiroba19" ]
[elsif exp="f.talk==20" ][jump  target="*hiroba20" ]
[elsif exp="f.talk==21" ][jump  target="*hiroba21" ]
[elsif exp="f.talk==22" ][jump  target="*hiroba1" ]
[elsif exp="f.talk==23" ][jump  target="*hiroba2" ]
[elsif exp="f.talk==24" ][jump  target="*hiroba3" ]
[elsif exp="f.talk==25" ][jump  target="*hiroba5" ]
[elsif exp="f.talk==26" ][jump  target="*hiroba26" ]
[elsif exp="f.talk==27" ][jump  target="*hiroba14" ]
[elsif exp="f.talk==28" ][jump  target="*hiroba18" ]
[elsif exp="f.talk==29" ][jump  target="*hiroba9" ]
[elsif exp="f.talk==30" ][jump  target="*hiroba30" ]
[elsif exp="f.talk==31" ][jump  target="*hiroba31" ]
[elsif exp="f.talk==32" ][jump  target="*hiroba32" ]
[elsif exp="f.talk==33" ][jump  target="*hiroba33" ]
[elsif exp="f.talk==34" ][jump  target="*hiroba34" ]
[elsif exp="f.talk==35" ][jump  target="*hiroba35" ]
[elsif exp="f.talk==36" ][jump  target="*hiroba36" ]
[elsif exp="f.talk==37" ][jump  target="*hiroba37" ]
[elsif exp="f.talk==38" ][jump  target="*hiroba38" ]
[elsif exp="f.talk==39" ][jump  target="*hiroba37" ]
[elsif exp="f.talk==40" ][jump  target="*hiroba36" ]
[elsif exp="f.talk==41" ][jump  target="*hiroba35" ]
[elsif exp="f.talk==42" ][jump  target="*hiroba34" ]
[else][jump  target="*hiroba22" ]
[endif]

*hiroba_random_other
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1" ][jump  target="*hiroba1" ]
[elsif exp="f.talk==2" ][jump  target="*hiroba2" ]
[elsif exp="f.talk==3" ][jump  target="*hiroba3" ]
[elsif exp="f.talk==4" ][jump  target="*hiroba4" ]
[elsif exp="f.talk==5" ][jump  target="*hiroba5" ]
[elsif exp="f.talk==6" ][jump  target="*hiroba6" ]
[elsif exp="f.talk==7" ][jump  target="*hiroba7" ]
[elsif exp="f.talk==8" ][jump  target="*hiroba8" ]
[elsif exp="f.talk==9" ][jump  target="*hiroba9" ]
[elsif exp="f.talk==10" ][jump  target="*hiroba12" ]
[else][jump  target="*hiroba12" ][endif]

*hiroba1
Tôi chậm rãi bước từng bước, trong bầu không khí mát mẻ của thị trấn[p]
[jump  target="*choice" ]
*hiroba2
Thị trấn lúc này thực sự rất yên tĩnh[p]
[jump  target="*choice" ]
*hiroba3
Cảnh sắc xung quanh thị trấn như đang từ từ thay đổi[p]
[jump  target="*choice" ]
*hiroba4
Tôi chỉ bước đi mà không nghĩ gì[p]
[jump  target="*choice" ]
*hiroba5
Cái cảm giác yên tĩnh này cũng thật tuyệt[p]
[jump  target="*choice" ]
*hiroba6
Cũng ít khi có dịp dạo quanh thị trấn như vậy[p]
[jump  target="*choice" ]
*hiroba7
Những tia nước phun ra tạo thành một màn sương mỏng với nhiều mầu sắc quanh đài phun nước.[p]
[jump  target="*choice" ]
*hiroba8
Đứng giữa thị trấn lúc này có cảm giác như cái đài phun nước là thứ duy nhất đang thức vậy[p]
[jump  target="*choice" ]
*hiroba9
Thị trấn này so với trước kia đã có nhiều thay đổi[lr]
Có thêm nhiều ngôi nhà mới, nhiều người khách lạ cũng hay qua lại ở đây[p]
[jump  target="*choice" ]
*hiroba10
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba11
Phía xa, có vài người khách lạ mặt bên những cửa hàng tiện lợi mới mở [p]
[jump  target="*choice" ]
*hiroba12
Không giống một thị trấn thầm lặng như trước kia,[lr]
Việc kinh doanh buôn bán của những người thương nhân mới đến đã làm cả thị trấn nhộn nhịp hơn. [p]
[jump  target="*choice" ]
*hiroba13
[if exp="f.sachi==1 && f.akemi_dr=='yet'"]
[jump storage="mod/akemi_hiroba.ks" target="*akemi_talk_lead"]
[else]
[jump  target="*hiroba14" ]
[endif]
*hiroba14
Một cơn gió nhẹ thổi qua.[p]
[jump  target="*choice" ]
*hiroba15
[if exp="f.sachi==1 && f.akemi_dr=='yet'"]
[jump storage="mod/akemi_hiroba.ks" target="*akemi_talk_lead"]
[else]
[jump  target="*hiroba16" ]
[endif]

*hiroba16
Thỉnh thoảng, cũng có vài người rảo bước trên phố với vẻ mặt mệt mỏi...[p]
[jump  target="*choice" ]
*hiroba17
....[p]
[jump  target="*choice" ]
*hiroba18
Có ai đó đang chơi vĩ cầm...[p]
[jump  target="*choice" ]
*hiroba19
....[p]
[jump  target="*choice" ]
*hiroba20
Nghe đâu đó, có tiếng dương cầm loáng thoáng trên phố[p]
[jump  target="*choice" ]
*hiroba21
......[p]
[jump  target="*choice" ]
*hiroba22
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba23
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba24
[if exp="f.sachi>=1 && f.akemi_dr=='yet'"]
[jump storage="mod/akemi_hiroba.ks" target="*akemi_talk_lead"]
[else]
[jump  target="*hiroba16" ]
[endif]

*hiroba25
[if exp="f.sachi>=1" ]
[if exp="f.sachi==1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba26
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba27
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba28
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba29
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba30
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba31
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba32
[if exp="f.sachi>=1" ]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_lead"]
[else]
[eval exp="f.sachi=1"]
[jump storage="mod/sachi_hiroba.ks" target="*sachi_talk_first"]
[endif]
*hiroba33
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba24"][endif]
*hiroba34
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba13"][endif]
*hiroba35
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba12"][endif]
*hiroba36
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba13"]
[endif]
*hiroba37
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba12"]
[endif]
*hiroba38
[if exp="f.sachi_talk>=1 && f.act<=4" ]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"]
[else]
[jump target="*hiroba24"]
[endif]

*hiroba_aur_snow
[mod_win st="00.png" ]
[jump storage="mod/H/Aurelia_snow_r.ks" target="*begin"]

*hiroba_aur_rain
[mod_win st="00.png" ]
[jump storage="mod/H/Aurelia_rain_r.ks" target="*begin"]

;;-----------------------------------------------------------------talk_other
