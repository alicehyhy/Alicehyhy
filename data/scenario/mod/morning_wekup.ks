*begin
[cm ][random_10]
[if exp="f.sachi_talk>=13 && f.sachi_date>=1 && f.r>=4"]
[jump storage="mod/dream.ks" target="*begin"]
[elsif exp="f.aurelia_tl=='yet' && f.r<=8"]
[jump storage="mod/dream.ks" target="*begin"][endif]
[if exp="f.dream>=2 && f.r<=4"]
[jump storage="mod/dream.ks" target="*begin"]
[elsif exp="f.dream>=3 && f.r<=7"]
[jump storage="mod/dream.ks" target="*begin"]
[elsif exp="f.dream>=4 && f.r<=8"]
[jump storage="mod/dream.ks" target="*begin"]
[else][eval exp="f.dream='non'"]
[jump target="*begin_"][endif]
*begin_
[cm]
[random_10]
[if exp="f.r>=7"][random_Dc_i][jump target="*maid_check_1"][endif]
[jump target="*wekup"]

*maid_check_1
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*maid_check_2"][endif][jump target="*wekup"]
*maid_check_2
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*maid_check_3"][endif][jump target="*wekup"]
*maid_check_3
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*wekup"][endif]

*wekup
[stopbgm][bgm_JH]
[if exp="f.dress>=81 && f.dress<=86"][eval exp="f.hat=12"][endif]
[set_stand][chara_mod name="ef" storage="mod/hand/bed_wekup.png" ][chara_mod name="h" storage="00.png" ]
[bg time="400" method="crossfade" storage="bg/bed_un_m.jpg" ]
[call target="*show_stand"]
[syl]
[if exp="f.dream=='sachi'"][jump target="*wekup_s"][endif]
[if exp="f.dream=='aureliaf'"][jump target="*wekup_af"][endif]
[if exp="f.dream=='aurelia'"][jump target="*wekup_a"][endif]
[if exp="f.act=='sex' || f.act=='sexxx' || f.act=='nurse' || f.act=='wood' || f.act=='nonp'"]
[jump target="*wekup_h"][else][jump target="*wekup_non"][endif][s]

*wekup_af
[f/s][name] à![lr_]
[f/sclp]Em biết hôm qua anh ngủ hơi muộn nhưng...[l_][f/sp]Trời đã sáng rồi đó.[p_]
[um_01][f/cp_nt]Umm~...[l_][f/cp]Anh làm ơn thức dậy đi ạ.[p_]
[f/re]Mà...hôm qua không biết vì sao người anh bỗng nhiên lạnh đi và còn ôm em rất[r] 
chặt nữa[lr_]
[f/re]Cũng may là anh không có bị cảm. Nếu không thì em không biết phải làm sao nữa.[p_]
[um_10][f/scp]Mà hình như lúc đó anh có nói mơ tên ai đó thì phải,[l_][f/sclcp] kì lạ nha![p_]
[f/re]Dạo này anh đã vất vả nhiều rồi ạ.[l_][f/re]nhưng dù thế thì anh cũng nên thức dậy đi ạ.[p_]
[_](Là mơ ư?...[l]Hẳn là vậy rồi...[p]
[jump target="*next"]

*wekup_a
[f/s][name] à![lr_]
[f/sclp]Em biết hôm qua anh ngủ hơi muộn nhưng...[l_][f/sp]Trời đã sáng rồi đó.[p_]
[um_01][f/cp_nt]Umm~...[l_][f/cp]Anh làm ơn thức dậy đi ạ.[p_]
[f/re]Mà...hôm qua không biết vì sao người anh bỗng nhiên lạnh đi và còn ôm em rất[r] 
chặt nữa.[p_] 
[f/re]Sau đó còn...[l_][f/sclcp][um_01]Umm~! S-sờ soạn khắp người em nữa...[lr_]
[f/re]Cũng may là anh không có bị cảm. Nếu không thì em không biết phải làm sao nữa.[p_]
[um_10][f/scp]Mà hình như lúc đó anh có nói mơ tên ai đó thì phải,[l_][f/sclcp] kì lạ nha![p_]
[f/re]Dạo này anh đã vất vả nhiều rồi ạ.[l_][f/re]nhưng dù thế thì anh cũng nên thức dậy đi ạ.[p_]
[_](Là mơ ư?...[l]Hẳn là vậy rồi...[p]
[jump target="*next"]

*wekup_s
[f/s][name] à![lr_]
[f/sclp]Em biết hôm qua anh ngủ hơi muộn nhưng...[l_][f/sp]Trời đã sáng rồi đó.[p_]
[um_01][f/cp_nt]Umm~...[l_][f/cp]Anh làm ơn thức dậy đi ạ.[p_]
[um_10][f/sp]Mà hình như lúc nãy anh có nói mơ tên ai đó thì phải,[l_][f/ssp] kì lạ nha![p_]
[f/re]Dạo này anh đã vất vả nhiều rồi ạ.[l_][f/re]nhưng dù thế thì anh cũng nên thức dậy đi ạ.[p_]
[_]Là mơ ư?...[l]Một giấc mơ kì lạ[p]
[jump target="*next"]

*wekup_non
[random_3]
[if exp="f.r==1"][jump target="*wekup_1"]
[elsif exp="f.r==2"][jump target="*wekup_2"]
[else][jump target="*wekup_3"][endif]

*wekup_h
[random_3]
[if exp="f.r==1"]
[playbgm loop="true" storage="Magenta_Touch.ogg" ][else]
[bgm_JH][endif]
[random_3]
[if exp="f.r==1"][jump target="*wekup_1_h"]
[elsif exp="f.r==2"][jump target="*wekup_2_h"]
[else][jump target="*wekup_3_h"][endif]

*wekup_1
[f/s][na_1][name] à![lr_]
[f/sclp]Em biết hôm qua anh ngủ hơi muộn nhưng...[l_][f/sp]Trời đã sáng rồi đó.[p_]
[um_01][f/cp_nt]Umm~...[l_][f/cp]Anh làm ơn thức dậy đi ạ.[p_]
[random_2][if exp="f.r==1"]
[jump target="*next"][else]
[f/ssp][sm_05]Anh làm ơn tỉnh ngủ đi...[p_]
[_]Huh...?[p_]
[jump target="*next_cont"][endif]

*wekup_1_h
[f/s][na_1][name] à![lr_]
[f/sclp]E-Em biết hôm qua anh đã hơi quá sức nhưng...[l_][f/sq]Trời đã sáng rồi đó.[p_]
[um_06][f/cp_nt]Umm~...[l_][f/cq]Anh làm ơn thức dậy đi ạ.[p_][jump target="*next"]

*wekup_2
[f/s][um_13][name] à![lr_]
[f/sclp]Đã hơi muộn rồi đó...[l_][f/sp]Anh làm ơn hãy dậy đi ạ.[p_]
[um_09][f/cp_nt]Mmm~...[lr_][f/r][name]~!. Em sẽ gặp rắc rối nếu anh cứ không chịu dậy thế này đó[p_]
[random_3][if exp="f.r>=2"]
[jump target="*next"][else]
[f/ssp][sm_05]Anh làm ơn tỉnh ngủ đi...[p_]
[_]Huh...?[p_]
[jump target="*next_cont"][endif]

*wekup_2_h
[f/s][um_13][name] à![lr_]
[f/sclp]Đã muộn rồi đó...[l_][f/sq]Nên anh làm ơn hãy dậy đi ạ.[p_]
[um_09][f/cp_nt]Umm~...[l_][f/cq]Nếu anh không chịu dậy thì em sẽ...[l_][f/sq]
[random_4][if exp="f.r==1"][sm_05]rắc rối đó...[p_]
[elsif exp="f.r==2"][sm_05]khiến anh gặp rắc rối đó...[p_]
[elsif exp="f.r==3"]gặp rắc rối đó...[p_][else]
gây rắc rối cho anh đó...[sm_05][p_][endif][jump target="*next"]

*wekup_3
[f/cp_nt][um_13]À~nou![lr_]
[f/cp][name] à~.![l_][f/clcp]Anh làm ơn hãy dậy đi ạ.[p_]
[um_01][f/cp_nt]Umm~...[l_][f/clcp][name] à~!. Đã muộn rồi đó ạ[p_]
[random_3][if exp="f.r>=2"]
[jump target="*next"][else]
[f/ssp][sm_05]Anh làm ơn tỉnh ngủ đi...[p_]
[_]Huh...?[p_]
[jump target="*next_cont"][endif]

*wekup_3_h
[f/cq_nt][um_13]À~nou![lr_]
[f/cq][name] à~.![l_][f/clcp]Anh làm ơn hãy dậy đi ạ.[p_]
[um_01][f/cq_nt]Umm~...[lr_][f/clcp][name] à~!. Em biết hôm qua anh hơi...[l_][f/cq]quá sức nhưng...Đã muộn rồi đó ạ[p_]
[jump target="*next"]

*next
[random_2]
[if exp="f.r==1"][jump target="*next_af"][endif]
[stopbgm]
[_]...[lr]
[random_3]
[if exp="f.r==1"](Hmm~_~! Đã đến lúc phải dậy rồi...[p_]
[elsif exp="f.r==2"](Hmm~! Đã muộn thế này rồi à. Phải dậy thôi.[p_]
[elsif exp="f.r==3"](Hmm~! Cũng hơi muộn thật rồi. Phải dậy thôi.[p_]
[else](Hmm~...! dậy thôi...[p_][endif]
(Dậy muộn thế này cũng mệt thật đấy.[p_]
[syl][f/sclp][random_3]
[if exp="f.r==1"][um_10]Em đã gọi anh mấy lần rồi đó...[p_]
[elsif exp="f.r==2"][um_06]Tại anh cứ không chịu dậy đó.[p_]
[else][um_10]Vậy thì anh hãy nhanh dậy đi...[p_][endif]
[f/s][random_3]
[if exp="f.r==1"]Em đã làm xong bữa sáng cho anh rồi đó.[p_]
[elsif exp="f.r==2"]Em đã chuẩn bị bữa sáng rồi đó.[p_]
[else]Bữa sáng của [name] đã chuẩn bị xong rồi ạ.[p_][endif]

[_]...[p_]
[random_10][if exp="f.r<=4"][jump target="*next_cont"][endif]
[chara_mod name="h" time="500" storage="mod/hand/wake_hand_1.png" ]
[random_4][syl]
[if exp="f.r==1"]
[f/cp_nt][um_03]Kya~![lr_]
[f/cp][um_06]Đó không phải bữa sáng đâu ạ.[l_]Em muốn nói đến bữa sáng trên bàn ăn cơ.[p_]
[f/sp][name] làm ơn hãy tỉnh ngủ đi.[sm_09][p_]
[elsif exp="f.r==2"]
[f/p_nt][um_08]Humm~![lr_]
[f/sp][name] à~[p_]
[f/sclp]Ngực của em không phải bữa sáng mà em nói đến đâu.[lr_][f/ssp] Anh làm ơn hãy bình tĩnh lại đi ạ.[sm_05][p_]
[elsif exp="f.r==3"]
[f/p_nt][um_08]Humm~![lr_]
[f/sp][name] à~[p_]
[f/sclp]Ngực của em không phải bữa sáng đâu.[l_][f/ssp] Anh làm ơn hãy bình tĩnh lại đi.[sm_19][p_]
[else][f/cp_nt][um_06]hahh~ah~![p_]
[f/sclp][na_1]Bữa sáng được đặt trên bàn ăn chứ không phải trên ngực em đâu, [name][lr_]
[f/ssp][sm_05]Anh làm ơn tỉnh ngủ đi...[p_][endif]
[_]Huh...?[p_]
[jump target="*next_cont"]

*next_af
[stopbgm]
[_]...[lr]
[random_3]
[if exp="f.r==1"](Hmm~_~! Đã đến lúc phải dậy rồi...[p_]
[elsif exp="f.r==2"](Hmm~! Đã muộn thế này rồi à.[p_]
[elsif exp="f.r==3"](Hmm~! Cũng hơi muộn thật rồi.[p_]
[else](Hmm~...! dậy thôi...[p_][endif]
(....[p_]
[syl][f/sclp][random_3]
[if exp="f.r==1"][um_10]Em đã gọi anh mấy lần rồi đó...[p_]
[elsif exp="f.r==2"][um_06]Tại anh cứ không chịu dậy đó.[p_]
[else][um_10]Vậy thì anh hãy nhanh dậy đi...[p_][endif]
[f/s][random_3]
[if exp="f.r==1"]Em đã làm xong bữa sáng cho anh rồi đó.[p_]
[elsif exp="f.r==2"]Em đã chuẩn bị bữa sáng rồi đó.[p_]
[else]Bữa sáng của [name] đã chuẩn bị xong rồi ạ.[p_][endif]

[_]...[p_]
[random_10][if exp="f.r<=4"][jump target="*next_cont"][endif]
[chara_mod name="h" time="500" storage="mod/hand/wake_hand_1.png" ]
[random_4][syl]
[if exp="f.r==1"]
[f/cp_nt][um_03]Kya~![lr_]
[f/cp][um_06]Đó không phải bữa sáng đâu ạ.[l_]Em muốn nói đến bữa sáng trên bàn ăn cơ.[p_]
[f/sp][name] làm ơn hãy tỉnh ngủ đi.[sm_09][p_]
[elsif exp="f.r==2"]
[f/p_nt][um_08]Humm~![lr_]
[f/sp][name] à~[p_]
[f/sclp]Ngực của em không phải bữa sáng mà em nói đến đâu.[lr_][f/ssp] Anh làm ơn hãy bình tĩnh lại đi ạ.[sm_05][p_]
[elsif exp="f.r==3"]
[f/p_nt][um_08]Humm~![lr_]
[f/sp][name] à~[p_]
[f/sclp]Ngực của em không phải bữa sáng đâu.[l_][f/ssp] Anh làm ơn hãy bình tĩnh lại đi.[sm_19][p_]
[else][f/cp_nt][um_06]hahh~ah~![p_]
[f/sclp][na_1]Bữa sáng được đặt trên bàn ăn chứ không phải trên ngực em đâu, [name][lr_]
[f/ssp][sm_05]Anh làm ơn tỉnh ngủ đi...[p_][endif]
[_]Huh...?[p_]
[jump target="*next_cont"]

*next_cont
[if exp="f.dream=='meme'"]
[jump target="*next_1d"][else]
[jump target="*next_1"][endif]

*next_1d
[eval exp="f.dream='non'"]
[chara_mod name="h" time="500" storage="mod/hand/on_hand.png" ]
[syl][f/sp_nt][um_10]Umm~![p_]
[f/sp]Vâng. Em vẫn đợi anh tỉnh dậy đây. Chúng ta sẽ cùng ăn sáng.[p_]
[_](Hmm...![p]

*next_1
[random_2][if exp="f.r==1"][jump target="*next_1_"][endif]
[chara_mod name="h" time="500" storage="mod/hand/wake_hand_2.png" ]
[random_2][syl]
[if exp="f.r==1"]
[f/ssp_nt][um_10]Umm~![lr_]
[else][f/ss_nt][um_10]Umm~![lr_][endif]
[random_4][if exp="f.r==1"]
[f/ssp]Vâng! Em hiểu là tại anh chưa tỉnh ngủ[r] nhưng mà em không thấy khó chịu hay gì đâu ạ.[p_]
[elsif exp="f.r==2"]
[f/sp]Vâng! Anh dậy rửa mặt đi[l_][f/re]Em sẽ thu dọn giường một chút [p_]
[elsif exp="f.r==3"]
[f/sp]Vâng!Em sẽ thu dọn giường một chút, anh đi rửa mặt trước đi [p_]
[else]Vâng!~Em hiểu là tại anh chưa tỉnh ngủ[r] nhưng mà em không thấy phiền gì việc đó đâu ạ.[p_]
[f/ss]Anh hãy dậy luôn đi nhé. Em sẽ dọn dẹp phòng một chút.[endif]
[if exp="f.act=='sex' || f.act=='sexxx'|| f.act=='nonp'"][lr_]
[f/ss]Tại hôm qua chúng ta làm nó bừa bộn lên mất rồi...hehe~![else]
[eval exp="f.act='dream'"][eval exp="f.last_act='non'"]
[endif]
[sm_09][p_]
;[emb exp="f.act"][p]
[stopbgm]
[bgm_SG]
[eval exp="f.mood='def'" ]
[if exp="f.sexless_c==3" ][eval exp="f.r=1" ]
[elsif exp="f.sexless_c==2 || f.lust>=2000" ][random_3]
[elsif exp="f.sexless_c==1 || f.lust>=1000" ][random_6][endif]

[if exp="f.r==1" ][eval exp="f.mood='lust'" ][endif]
[if exp="f.sexless_c>=2 || f.lust>=2000" ]
[jump storage="talk/step6.ks" target="*show_bace" ][endif]

[if exp="f.sexless_c==1 || f.lust>=1500" ][random_10]
[elsif exp="f.lust>=1000" ][random_8]
[else][random_6][endif]
[if exp="f.r==1" ][eval exp="f.mood='calm'" ][endif]
[jump storage="talk/step6.ks" target="*show_bace" ]
;after----------------------------------------------
*next_1_
[chara_mod name="h" time="500" storage="00.png" ]
[random_2][if exp="f.r==1"]
[f/sp]Vâng! Anh dậy rửa mặt đi[l_][f/re]Em sẽ thu dọn giường một chút [p_]
[else]
[f/sp]Vâng!Em sẽ thu dọn giường một chút, anh đi rửa mặt trước đi [p_][endif]
[if exp="f.act=='sex' || f.act=='sexxx'|| f.act=='nonp'"][lr_]
[f/ss]Tại hôm qua chúng ta làm nó bừa bộn lên mất rồi...hehe~![else]
[eval exp="f.act='dream'"][eval exp="f.last_act='non'"]
[endif]
[sm_09][p_]
;[emb exp="f.act"][p]
[stopbgm]
[bgm_SG]
[eval exp="f.mood='def'" ]
[if exp="f.sexless_c==3" ][eval exp="f.r=1" ]
[elsif exp="f.sexless_c==2 || f.lust>=2000" ][random_3]
[elsif exp="f.sexless_c==1 || f.lust>=1000" ][random_6][endif]

[if exp="f.r==1" ][eval exp="f.mood='lust'" ][endif]
[if exp="f.sexless_c>=2 || f.lust>=2000" ]
[jump storage="talk/step6.ks" target="*show_bace" ][endif]

[if exp="f.sexless_c==1 || f.lust>=1500" ][random_10]
[elsif exp="f.lust>=1000" ][random_8]
[else][random_6][endif]
[if exp="f.r==1" ][eval exp="f.mood='calm'" ][endif]
[jump storage="talk/step6.ks" target="*show_bace" ]


;;-------------------------------------------------------------------------------------------------------
*show_stand
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]
[chara_show name="ef" time="0" wait="false" left="0.1" zindex=195 ]
[chara_show name="h" time="0" wait="false" left="0.1" zindex=185 ]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="0.1" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=147 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=180 ][f/s_nt]
[chara_hide name="black" layer=1 time="1800" ][return]