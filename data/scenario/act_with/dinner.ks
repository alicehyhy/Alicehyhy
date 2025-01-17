;;
*dinner
[if exp="f.syl_game1=='out'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return][endif]
[cm][black][stop_bgm][copy_neck][copy_hat]
[eval exp="f.hp=f.hp+3"][hp_return]
[_][if exp="f.dinner_c>=1" ]（Sylvie và tôi đi vào nhà hàng。[p_][eval exp="f.dinner_c=0" ]
[else]（Chúng tôi bước vào quán ăn quen thuộc。[lr_]
Có vẻ quán ăn này thay đổi thực đơn vào buổi tối。[p_]
[endif]
[chara_mod name="hand_L" time="1" storage="00.png" ]
[chara_mod name="sub" time="1" storage="o/sub/nephy_n.png" ]
[bg_restaurant][bgm_II]
[chara_show name="sub" time="100" wait="true" ]
[neph]Xin chào quý khách[lr_]
Quý khách đi hai người phải khôngー？[p_]
[_]Cô phục vụ dẫn chúng tôi tới chỗ ngồi với dáng vẻ kì quái。[p_]
[eval exp="f.dinner_c=f.dinner_c+1" ][eval exp="f.r='c'" ]
[set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt][mod_win st="o/win/food-win.png" ][show_dinner]
[chara_show name="window" time="1" wait="true" left="806" top="33" zindex=185 ]

[_]（Nên chọn món gì đây？[p_]
[button target="*meetsauce" graphic="sw/meetsauce.png" x="887" y="170" ]
[button target="*carbonara" graphic="sw/carbonara.png" x="887" y="225" ]
[if exp="f.love>=250" ]
[button target="*hamburg" graphic="sw/hamburg.png" x="887" y="280" ]
[button target="*steak" graphic="sw/steak.png" x="887" y="335" ][endif]
[if exp="f.love>=350" ]
[button target="*rollcabbage" graphic="sw/rollcabbage.png" x="887" y="390" ]
[button target="*gratin" graphic="sw/gratin.png" x="887" y="445" ][endif]
;[if exp="f.love>=500" ]
;[button target="*waffle" graphic="sw/waffle.png" x="900" y="340" ]
;[button target="*pafe" graphic="sw/pafe.png" x="1086" y="340" ][endif]
[cancelskip][s]

;;ミートソース
*meetsauce
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-meetsource.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi đã tới。[p_]

[syl][if exp="f.d_meetsauce==1" ][else][eval exp="f.d_meetsauce=1" ][endif]
[f/a_s]Món mỳ ý và nước sốt có mùi thật thơm ngon。[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-meetsource_.png" ][endif]
[f/s]Vậy, Em bắt đầu ăn đây!。[p_]
[m/mgmg_s][um_09]Umm, ngon quá。[p]
[f/p_nt]……Mumm, nước sốt trong miệng em？[l_]
[f/cp]Un..À.rế, nó đang trào ra？[p_]
[f/p_nt]đúng vậy kìa。[p_]
[f/clp]Em xin lỗi, thật xấu hổ…。[p_]
[jump target="*ate" ]

;;カルボナーラ
*carbonara
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-carbonara.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi được mang ra。[p_]
[syl]
[if exp="f.d_carbonara==1" ]
[f/a_s]Mỳ ý! Đây là mỳ ý "carbonara" phải không。[r]("carbonara": mỳ ý với sốt kem phomat và thịt xông khói)[p_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][chara_mod name="hand_L" time="1" storage="o/food/d-carbonara_.png" ][endif]
[f/s]Vậy. Em ăn đây。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/re]Fufu! Ngon quá。[p_]
[f/]Nó rất ngon, tuy nhiên, em vẫn chưa thưởng thức được hết hương vị của nó。[lr_]
[f/cl]Có rất nhiều thứ đã lấp đầy tâm trí của em…。[p_]

[else][eval exp="f.d_carbonara=1" ]
[f/a_s]Sau tất cả thì hương vị của nó khác một chút so với ăn ở nhà。[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][chara_mod name="hand_L" time="1" storage="o/food/d-carbonara_.png" ][endif]
[f/s]Jaa, Itadakimasu。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/re]Fufu, oishii desu。[p_]
[f/]…[name] Nó thật giống với lần đầu tiên chúng ta ăn cùng nhau ở nhà。[p_]
[f/cl]Nó rất ngon, tuy nhiên, em vẫn chưa thưởng thức được hết hương vị của nó。[p_]
[f/sc]Có rất nhiều thứ đã lấp đầy tâm trí của em…。[p_]
[endif][jump target="*ate" ]

;;ハンバーグ
*hamburg
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-hamburg.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi được mang ra。[p_]

[syl][if exp="f.f_hamburg==1" ][else][eval exp="f.f_hamburg=1" ][endif]
[f/a_s]Món Hamburger thịt bò này có hương vị thật ngon 。[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-hamburg_.png" ][endif]
[f/s]Vậy, em ăn đây。[p_]
[m/mgmg_s][um_09]Mumm! [lr]
thịt của nó rất mềm và ngon。[p_]
[f/s]Nước sốt này...là gì nhỉ。[lr_]
[f/]Nó được làm từ gì vậy... rượu vang....hay rau...hay thứ gì khác!。[p_]
[jump target="*ate" ]

;;ステーキ
*steak
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-steak.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi được mang ra。[p_]
[syl]
[if exp="f.d_steak==1" ]
[f/a_s]Món bít tết.... miếng thịt lớn như vậy chúng ta cùng ăn nhé。[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][chara_mod name="hand_L" time="1" storage="o/food/d-steak_.png" ][endif]
[f/s]I..Itadakimasu。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/re]…Ah!..Em xin lỗi, nhưng nó thật sự rất ngon!。[p_]
[f/re]Mùi vị này có thể sẽ khiến em quên mất bản thân mình là một đứa trẻ mồ côi và là một nô lệ。[lr_]
[f/]Ăn khi còn nóng là tốt nhất…。[p_]

[else][eval exp="f.d_steak=1" ]
[f/a]Một miếng thịt bò...nhìn rất đơn giản nhưng nó vẫn khiến ta thấy thèm thuồng…[p_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-steak_.png" ][endif]
[f/re]Jā, Itadakimasu。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/]… ngon quá。[lr_]
[m/mgmg_s]…。[p_]
[f/s]Ở nhà chắc chắn mình chưa bao giờ nướng được miếng thịt ngon thế này。[lr_]
[f/scl]Không biết có cần điều kiện hay điều gì đó không?。[p_]
[endif][jump target="*ate" ]

;;ロールキャベツ
*rollcabbage
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-rollcabbage.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi được mang ra。[p_]
[syl]
[if exp="f.d_rollcabbage==1" ]
[f/a_s]Thật là thơm, đây là món'nhồi bắp cải'!。[p_]
[f/s]Vâng, em chưa bao giờ ăn chúng。[p_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-rollcabbage_.png" ][endif]
[f/re]Em có thể ăn nó chứ?。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/s]Đó là bắp cải...Ah、có thịt cuộn bên trong đó[lr_]
Bởi vì bắp cải này đã ngấm vị của thịt và súp[r]Và vị tươi ngon của rau、[p_]
[f/re]Mặc dù nó là món thịt nhưng vị của nó không quá béo。[p_]

[else][eval exp="f.d_rollcabbage=1" ]
[f/a_s]Đó có phải là bắp cải cuộn thịt không nhỉ?[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-rollcabbage_.png" ][endif]
[f/]Vâng! em ăn đây[p_]
[m/mgmg_s][um_09]Unn~、ngon quá[p_]
[f/re]Bởi vì bắp cải này đã ngấm vị của thịt và súp。[lr_]
[f/re]Và vị tươi ngon của rau？[p_]
[m/mgmg_s]Amum……[p_]
[f/s]un、ngon quá…[p_]
[f/scl]Được ăn một bữa ăn nóng sốt và ngon thế này、[r]
Em cảm thấy rất hạnh phúc…。[p_]
[endif][jump target="*ate" ]

;;グラタン
*gratin
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[chara_mod name="hand_L" time="1" storage="o/food/d-gratin.png" ]
[show_dinner]（Sau một lúc, thức ăn tôi gọi được mang ra。[p_]

[syl][if exp="f.d_gratin==1" ][else][eval exp="f.d_gratin=1" ][endif]
[f/a_s]Là món bánh khoai tây, trông chóng thật ngon。[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod name="hand_L" time="1" storage="o/food/d-gratin_.png" ][endif]
[f/s]Vậy thì...em ăn đây。[p_]
[m/mgmg_s][um_09] Umm~...[p]
[f/s_nt]Asasa…[l_]
[f/cl]Fuー、fuー。[lr_]
…amum。[p_]
[f/ss]ん、ngon quá。[p_]
[f/s]Vị của nước sốt và hương phô mai thật sự rất ngon。[p_]
[jump target="*ate" ]

;;end
*ate

[_][if exp="f.love>=200" ]
[f/ss]（Sylvie đang ăn với một nụ cười hạnh phúc。[p_]

[else]
[f/s]（Sylvie luôn cảm thấy vui vẻ khi cô ấy ăn。[p_]
[endif]

…。[p_]
[eval exp="f.love=f.love+5" ][eval exp="f.daily_out='dinner'" ]
[set_stand][f/s_nt][bg_restaurant][show_stand]

[syl][f/scl]Cảm ơn vì bữa ăn。[lr_]

[if exp="f.love>=1000" ][f/ss]Nó thật sự rất ngon。[p_]
[elsif exp="f.love>=200" ][f/s]Món ăn đó rất ngon。[p_]
[else][f/s]Món ăn đó rất ngon。[p_][endif]

[f/re]Cảm ơn anh rất nhiều。 [name]。[p_]
[black][chara_00]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t][eval exp="f.ch_check='true'"]
Tài khoản còn [money][p_]
[paste_neck][paste_hat][eval exp="f.last_act='dinner'" ]
[jump storage="act_with/go_out.ks" target="*after_town" ]
