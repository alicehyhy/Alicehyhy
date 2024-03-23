*begin
[black][chara_00][stopbgm][bgm_JH][cm][eval exp="f.hat=0"]
[cm][black][stopbgm][bgm_JH]
[bg time="0" method="crossfade" storage="bg/bed.jpg" ]
[_](Sáng nay tôi tỉnh dậy hơi sớm so với mọi khi.[p]
(Không thấy Sylvie bên cạnh.[lr]
Chắc cô ấy đang chuẩn bị bữa sáng cho tôi.[p]
[bg time="500" method="crossfade" storage="H/kitchen.jpg" ]
(Tôi không thấy Sylvie trong bếp.[lr]
Bữa sáng hình như đã được chuẩn bị.[p]
(Chắc cô ấy đi đâu đó mua đồ.[r] Tôi sẽ uống một tách trà trong khi đợi cô ấy về.[p]
(Trước đó tôi sẽ đi rủa mặt chút đã.[p][black]
...[p]
Hình như có tiếng nước trong phòng tắm.[lr]
[bg time="500" method="crossfade" storage="bg/mod/bg_bath_01.jpg" ]
Vậy là Sylvie đang ở trong đó.
[button target="*bath_look" graphic="ch/bath_look.png" x="0" y="200" ]
[button target="*bath_out" graphic="ch/bath_out.png" x="0" y="350" ][s]

*bath_out
[cm]
(Tôi sẽ ra ngoài đợi cô ấy vậy.[p]
[bg time="500" method="crossfade" storage="bg/room.jpg" ]
.[wait time="500"].[wait time="500"].[wait time="500"][cm]
[dress_random][eval exp="f.hair_band=0"][eval exp="f.hair_style=0"][eval exp="f.pin=0"][eval exp="f.socks=0" ][eval exp="f.neck=0"][eval exp="f.gloves=0"][eval exp="f.hat=0"]

[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][eval exp="f.front_hair=0"]
[elsif exp="f.talk==2"][eval exp="f.front_hair=6"]
[elsif exp="f.talk==3"][eval exp="f.front_hair=4"]
[endif]

[set_stand][bg time="500" method="crossfade" storage="bg/room.jpg" ][f/sp_nt][show_stand]
[syl][f/sp]Chào buổi sáng! [name][lr_]
[random_3][if exp="f.r==1"]
[f/sclp]Anh đã tỉnh dậy rồi ạ?[p_]
[elsif exp="f.r==2"]
[f/sclp]Anh tỉnh dậy rồi ạ?[p_]
[else]
[f/sclp]Anh vừa tỉnh dậy ạ?[p_][endif]
[f/ssp]Vì vẫn còn sớm nên em chưa vào đánh thức anh ạ![lr_]
[f/sclp]Bữa sáng em đã chuẩn bị rồi nên chúng ta cùng vào ăn nhé![p_][f/ssp_nt][sm_09]
.[wait time="500"][cm][black][jump storage="mod/morning_eat.ks" target="*lunch"]


*bath_out_non
[cm][black]
(Tôi sẽ ra ngoài đợi cô ấy vậy.[p]
[bg time="500" method="crossfade" storage="bg/room.jpg" ]
.[wait time="500"].[wait time="500"].[wait time="500"][cm]
[dress_random][eval exp="f.hair_band=0"][eval exp="f.hair_style=0"][eval exp="f.pin=0"][eval exp="f.socks=0" ][eval exp="f.neck=0"][eval exp="f.gloves=0"][eval exp="f.hat=0"]

[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][eval exp="f.front_hair=0"]
[elsif exp="f.talk==2"][eval exp="f.front_hair=6"]
[elsif exp="f.talk==3"][eval exp="f.front_hair=4"]
[endif]

[set_stand][bg time="0" method="crossfade" storage="bg/room.jpg" ][f/sp_nt][show_stand]
[syl][f/sp]Chào buổi sáng! [name][lr_]
[f/sclp]E-Em tắm xong rồi ạ?[p_]
[f/sp]Bữa sáng em đã chuẩn bị rồi nên chúng ta cùng vào ăn nhé![p_][f/ssp_nt][sm_09]
.[wait time="500"][cm][black][jump storage="mod/morning_eat.ks" target="*lunch"]


*bath_look
[cm]
[eval exp="f.wet=0"][eval exp="f.sex_bath='non'"]
[eval exp="f.test=0"][eval exp="f.dress=0"][eval exp="f.hat=0"][eval exp="f.under_p=0"]
[eval exp="f.under_b=0"][eval exp="f.hair_band=0"][eval exp="f.hair_style=0"][eval exp="f.pin=0"][eval exp="f.socks=0" ][eval exp="f.neck=0"][eval exp="f.gloves=0"]
[set_stand][f/p_nt][bg time="0" method="crossfade" storage="bg/mod/bg_bath_03.jpg" ]
[f/p_nt][show_stand][syl]
[a_02]Hmm?...![lr_]
[f/p]L-Là...[name] ạ![p_]
[f/sp]Anh đã tỉnh dậy rồi ạ?[p_]
[f/sclp]Em đã chuẩn bị bữa sáng rồi ạ![lr_]
[f/ssp]Anh hãy đợi một lát nhé. Em sẽ tắm xong nhanh thôi ạ![p_][sm_09]
(...

[button target="*bath_with_f" graphic="ch/bath_with.png" x="0" y="180" ]
[if exp="f.sexless>=2 || f.sexless_c>=1"]
[button storage="mod/H/H_bath1_morning.ks" target="*begin" graphic="ch/H_x.png" x="0" y="330" ][endif]
[button target="*bath_out_non" graphic="ch/bath_out.png" x="0" y="480" ][s]

*bath_with_f
[cm]
[syl][f/p_nt][a_01]Umm?[lr_]
[f/sp]A-Anh cũng muốn tắm luôn ạ?[p_]
[f/ssp]Em sẽ giúp anh tắm nữa nhé![p_][sm_05]
[f/sp]Em sẽ kỳ lưng giúp [name][p_]
[jump target="*bat_with_af"]

*bath_with
[cm][stopbgm][bgm_JH][set_stand][f/sp_nt]
[bg time="600" method="crossfade" storage="bg/mod/bg_bath_03.jpg" ][show_stand]
[layermode graphic="effect/H/bath_ef.png" time="0" mode="overlay" wait="false" ]
[jump target="*bat_with_af"]

*bat_with_af
[syl][f/ss_nt][um_10]Umm![lr_]
[f/sclp]Em giúp [name] cởi đồ nhé![l_][f/sp_nt]..Heh~❤❤❤[sm_09][p_]
[set_nade_][f/sclp_nt]
[bg time="0" method="crossfade" storage="bg/mod/bg_bath_02.jpg" ]
[show_nade_nonbg]
[_](Sylvie đang giúp tôi kỳ cọ cơ thể.[lr_] 
Bàn tay nhỏ bé và mềm mại của cô ấy lần lượt thoa dầu tắm lên khắp cơ thể tôi.[p_]
[random_2]
[if exp="f.r==1"]
[f/sclp][ii_1]Anh thấy tốt chứ? [name][p_]
[else][f/sclp][na_1] Lưng của [name] thật lớn và ấm áp[l_]..Heh~❤❤❤[sm_09][p_][endif][f/sp_nt]
[um_09]Hmm!~~❤![p_][f/ssp_nt][sm_05]
[if exp="f.sexless>=2 || f.sexless_c>=1"]
[jump target="*h_j"][else][jump target="*bath_next"][endif]

*h_j
[_]
(Sylvie áp cơ thể cô ấy vào tôi và lần lượt sờ nắn khắp cơ thể tôi...[p_]
[random_2]
[if exp="f.r==1"]
[syl][f/sq][name] thật ấm áp...[lr_]
[else][syl][f/sq][name] thật lớn và ấm áp...[lr_][endif]
[f/ssp]Và chỗ này cũng thật lớn.[p_][sm_09]
[_](Có vẻ như cô ấy đang muốn nghịch ngợm trên cơ thể tôi.[lr_]
Dưới sự trơn trượt của sữa tắm, tôi có thể cảm nhận được bàn tay nhỏ bé và [r]mềm mại của Sylvie.[p_]
[syl][f/q_nt][a_02]Hmm~?[lr_]
[f/ssp]Em sẽ làm sạch cả chỗ này nữa nhé![p_][sm_07]
[_](Thằng nhỏ đang cương cứng của tôi đã nằm trong bàn tay nhỏ bé của Sylvie.[p_]
[syl][f/sclp_nt][um_10]Umm!~❤[lr_]
[random_2]
[if exp="f.r==1"]
[f/sclp]Nó thật là lớn và cứng.~❤[lr_]
[else][f/sclp]Của [name] thật là lớn và cứng.~❤[lr_][endif]
[f/sq][wet_1]Nó khiến bàn tay em muốn tan chảy đây nè.[p_][f/ssp_nt][sm_07]
[_](Sylvie nhẹ nhàng vuốt lên vuốt xuống lớp bao quy đầu trên thằng nhỏ của tôi.[p_]
Tôi cảm nhận được bàn tay mềm mại và ấm áp của cô ấy đang chăm sóc cho[r] thằng nhỏ của mình.[p_]
[syl][f/sq_nt][a_02]Hmm~?[lr_]
[f/re]Nó hình như đã lớn hơn nữa rồi này~❤[p_][f/clp_nt]
[_][l_04](Sylvie có vẻ rất phấn khích,[r] cô ấy tập trung vào việc nắm lấy thằng nhỏ của tôi không ngừng vuốt lên rồi vuốt[r] xuống...[p_]
Cùng với đó tiếng thở của cô ấy cũng tạo thành âm thanh rất kích thích, vang khắp[r] gian nhà tắm nhỏ bé này.[p_]
Tôi cũng thả lỏng người và hơi ngả ra sau một chút và cảm nhận đôi bàn tay[r] nghịch ngợm của Sylvie.[p_]
[syl][u_01]Umm![lr_]
[f/sq]C-Của chủ nhân đang nóng lên...và...còn co giật nữa...[p_]
[f/ssp]Thật là hung dữ nha![p_][sm_09]
...[p_][f/clp_nt][l_13]
[_](Tôi đã đến giới hạn...[p_][hide_message_w][quake_3][wait time="300"]
[chara_mod name="ef2" time="0" storage="mod/bath/bathz1.png"]
[chara_show name="ef2" time="200" wait="false" left="0.1" zindex=190][r_02][f/sq_nt][l_][wet_1][l][show_message_w]
[syl][f/sq][name]![p_]
[_](Tôi bắn tinh dịch lên sylvie. Tinh dịch của tôi bám lên cổ và ngực cô ấy.[lr_]
Sylvie lại có vẻ thích thú với điều đó.[p_]
[syl]
[random_2][if exp="f.r==1"]
[f/sq]Thật tuyệt...nó thật nóng.[p_][f/ssp_nt][else]
[f/sq]Của [name]...nó thật nóng.[p_][f/ssp_nt][endif]
[sm_05]heh!he!...[p_]
[f/q_nt]À-rế!?[p_]
[f/ssp]Em xin lỗi [name]! Tại vì...[l_][f/sq]Nó thật sự rất đáng yêu...[r]
Nên em có hơi quá tay ạ![p_][f/ssp_nt][sm_07]
[_](...?[p_]
[syl][f/ssp]E-Em thật sự không cố ý đâu ạ.[lr_]
[f/sp][um_10]Em sẽ làm sạch giúp [name] nhé![p_]
(...[chara_mod name="ef2" time="500" storage="00.png"][p]
[jump target="*bath_next"]

*bath_next
[set_stand]
[f/sp_nt][bg time="0" method="crossfade" storage="bg/mod/bg_bath_03.jpg" ]
[layermode graphic="effect/H/bath_ef.png" time="0" mode="overlay" wait="false" ]
[show_stand][syl]
[f/sp]Xong rồi đó! [name][lr_]
[f/sclp]Anh vào ngâm mình trước nhé!...[sm_09][lr_]
[f/ssp]Em tắm một lát đã![p_]

[if exp="f.sexless>=2 || f.sexless_c>=1"][else]
[jump target="*bathub"][endif]
[if exp="f.sex_bath=='yet' || f.sex_door=='yet'"][else]
[button storage="mod/H/H_bath2.ks" target="*begin" graphic="ch/H_x.png" x="0" y="330" ][endif]
[button target="*bathub" graphic="ch/bathub.png" x="0" y="480" ][s]



*bath_syl
[cm]
[syl][f/p_nt][a_08]Sao cơ??[lr_]
[f/clp][na_1]E-Em tự làm được mà [name]. Anh không cần làm vậy đâu.[p_]
[_](...[p_]
[syl][f/p][um_01]V-Vâng! Em hiểu rồi nhưng...[p_]
[random_2]
[if exp="f.r==1"][f/clp]E-Em xin lỗi vì lúc nãy có nghịch ngợm một chút...[lr_]
[else]E-Em xin lỗi vì đã nghịch cơ thể anh một chút...[lr_][endif]
[f/p]A-Anh đừng làm gì kì cục với em nhé...[p_][um_01](~*click*~)[l_].

[chara_mod name="dress" time="500" storage="00.png" ][wait time="100"].
[chara_mod name="under_b" time="300" storage="00.png" ][wait time="100"].[chara_mod name="under_p" time="300" storage="00.png" ][wait time="400"].
[eval exp="f.dress=0"][eval exp="f.under_b=0"][eval exp="f.under_p=0"]
[eval exp="f.dress=0"]
[set_dress][set_under_dress][f/p_nt][bg time="0" method="crossfade" storage="bg/mod/bg_bath_03.jpg" ]
[layermode graphic="effect/H/bath_ef.png" time="0" mode="overlay" wait="false" ]
[call target="*show_dress"]
[chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"]
[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=195][chara_show name="hand_L" time="0" wait="false" left="0.1" zindex=192]
[chara_mod name="ef2" time="0" storage="00.png"]
[chara_show name="ef2" time="0" wait="false" left="0.1" zindex=190]

[position layer=message0 page=fore frame="frame/def.png" width=1318 height=310 top=610 left=10 margint=75 marginl=70 marginr=180 marginb=35 vertical=false ]
[position layer=message1 page=fore frame="non" vertical=false opacity=0 color=0x00000 ]
[position layer=message1 top=165 left=850 width=480 height=430  margint=50 marginl=40 marginr=50 marginb=1]
[ptext name="chara_name_area" layer="message0" color=0x000000 size=30 x=42 y=632 bold="bold"]
[chara_config ptext="chara_name_area" pos_mode=true time="600" memory="true" anim="true" effect="" ]


[layopt layer="message0" visible=false]
[nolog][current layer="message1" ][layopt layer="message1" visible=true][font_blue1]
[chara_mod name="cg1" time="0" storage="o/win/out_win-.png" ]
[chara_show name="cg1" time="0" wait="false" left="0.1"]
[_][jump target="*click"]
*click
[cm]
[if exp="f.wet>=50"][chara_mod name="ef2" time="0" storage="mod/bath/xp1.png"]
[elsif exp="f.wet>=20"][chara_mod name="ef2" time="0" storage="mod/bath/xp0.png"]
[endif]
[if exp="f.wet>=70"][jump target="*syl_bath_f"][endif]

[clickable width="70" height="70" x="520" y="626" storage="mod/bath.ks" target="*hl1" border="" ]
[clickable width="75" height="75" x="484" y="520" storage="mod/bath.ks" target="*hl1_2" border="" ]
[clickable width="50" height="90" x="389" y="509" storage="mod/bath.ks" target="*hr1_2" border="" ]
[clickable width="55" height="55" x="366" y="368" storage="mod/bath.ks" target="*hl2" border="" ]
[clickable width="60" height="85" x="546" y="760" storage="mod/bath.ks" target="*hl3" border="" ]
[clickable width="55" height="55" x="552" y="701" storage="mod/bath.ks" target="*hl3" border="" ]
[clickable width="55" height="55" x="517" y="723" storage="mod/bath.ks" target="*hl3" border="" ]
[clickable width="50" height="190" x="438" y="606" storage="mod/bath.ks" target="*hl4" border="" ]

[clickable width="70" height="70" x="352" y="637" storage="mod/bath.ks" target="*hr1" border="" ]
[clickable width="75" height="75" x="363" y="564" storage="mod/bath.ks" target="*hr1_2" border="" ]
[clickable width="50" height="90" x="476" y="509" storage="mod/bath.ks" target="*hl1_2" border="" ]
[clickable width="55" height="55" x="494" y="355" storage="mod/bath.ks" target="*hr2" border="" ]
[clickable width="60" height="85" x="336" y="773" storage="mod/bath.ks" target="*hr3" border="" ]
[clickable width="55" height="55" x="324" y="715" storage="mod/bath.ks" target="*hr3" border="" ]
[clickable width="55" height="100" x="365" y="795" storage="mod/bath.ks" target="*hr3" border="" ]

[button target="*bo_tay_ra" graphic="m/off_hand.png" x="859" y="53" ]
[s]


*syl_t
[syl][random_15]
[if exp="f.r==1"]
[um_01]Umm! [name].[lr_]
Anh nghiêm túc một chút đi mà...![p_][f/p_nt]
[elsif exp="f.r==2"]
[um_02]Hmm![lr_]
[f/sp_nt][name] à! Chúng ta không nên làm vậy ở đây đâu.[p_]
[elsif exp="f.r==3"]
[um_05]Umh~[lr_]
[f/p_nt]K-Không...[l_][f/clp_nt]Em không cảm thấy khó chịu nhưng...[p_]
[f/p_nt]Nếu anh cứ làm như vậy em sẽ...[p_][um_01]
[elsif exp="f.r==4"]
[um_06]Hahh!~[p_][f/sp_nt]
[name] thật là E-Ecchi...~❤[p_][sm_05][f/ss_nt]
[elsif exp="f.r==5"]
[um_09]Hmm![lr_]
[f/sclp_nt]Bàn tay của [name] thật lớn và ấm áp...~❤[p_][f/ss_nt][sm_09]
[elsif exp="f.r==6"]
[um_13]Umm~![lr_]
[f/sp_nt][name] à!...[l_][na_1][f/sclp_nt]Anh muốn làm vậy thêm bao lâu nữa thế?[p_][sm_09]
[elsif exp="f.r==7"]
[um_14]hah~ha~![lr_]
[f/p_nt]...[p_]
[elsif exp="f.r==8"]
[u_01]Umm~uh~![lr_]
[f/p_nt][kore_1][name]!..C-Chỗ đó...~❤[p_][f/clp_nt]
[elsif exp="f.r==9"]
[ss_01]Hah~ha~![lr_][f/p_nt]
...[p_]
[elsif exp="f.r==10"]
[r_01]Ah~hah~![p_][f/p_nt]
[name]...E-Em thấy[l_]...ở đó[l_][f/clp_nt]...lạ lắm[p_]
[elsif exp="f.r==11"]
[r_02]Eh~hm~![p_]
[f/sp_nt]A-Anh làm hơi mạnh quá đó...[name]!~❤[p_]
[elsif exp="f.r==12"]
[r_03]Ưmmm!~❤[lr_]
[f/p_nt]Ơ~?[l_][f/clp_nt]...K-Không có gì đâu ạ![p_][f/p_nt]
[elsif exp="f.r==13"]
[r_04]Umm~uh~![lr_]
[f/p_nt]Eh!...[l_]Đ-Đó là...tại [name] đấy nhé![p_][f/p_nt]
[f/clp_nt]E-Em không có phát ra âm thanh gì kì cục như vậy đâu.[p]
[elsif exp="f.r==14"]
[r_06]Hah~ah!~[lr_]
[f/sp_nt]Anh cảm thấy ổn khi làm vậy ư?[p_][f/ss_nt][sm_09]
[else][u_03]Umm~hmm~![lr_]
[f/sclp_nt]Anh nghịch vậy đủ chưa? [name]!~❤[p_][f/ss_nt][sm_07][endif]

[jump target="*click"]

*syl_bath_f
[chara_mod name="cg1" time="0" storage="00.png" ]
[reset_frame]
[cm_t][layopt layer="message0" visible=true][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"]
(...[p_]
[syl][f/clp_nt][na_1][name]!..[lr_]
[f/p_nt]Em nghĩ như vậy là được rồi ạ![p_]
[_][f/clp_nt](...
[chara_mod name="ef2" time="500" storage="00.png"][p_]
[f/sp_nt]Chúng ta cùng ngâm một lúc nhé![p_][sm_09]
[_][f/sclp_nt]...[p_]
[jump target="*bathub"]

*bo_tay_ra
[cm][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"]
[jump target="*click"]

*hl1
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"]
[chara_mod name="hand_L" time="0" storage="mod/hand/bath/h_l1.png"]
[_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]

*hl1_2
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"]
[chara_mod name="hand_L" time="0" storage="mod/hand/bath/h_l1_2.png"]
[_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]

*hl2
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_L" time="0" storage="mod/hand/bath/h_l2.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]
*hl3
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_L" time="0" storage="mod/hand/bath/h_l3.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]
*hl4
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_L" time="0" storage="mod/hand/bath/h_l4.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[chara_mod name="hand_R" time="0" storage="00.png"]
[jump target="*syl_t"]
*hr1
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_R" time="0" storage="mod/hand/bath/h_r1.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]

*hr1_2
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_R" time="0" storage="mod/hand/bath/h_r1_2.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]

*hr2
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_R" time="0" storage="mod/hand/bath/h_r2.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]
*hr3
[cm]
[random_8]
[if exp="f.r>=2"][chara_mod name="hand_R" time="0" storage="00.png"][chara_mod name="hand_L" time="0" storage="00.png"][endif]
[eval exp="f.wet=f.wet+10"][chara_mod name="hand_R" time="0" storage="mod/hand/bath/h_r3.png"][_][f/clp_nt][wet_1]..*~*.[p_]
[jump target="*syl_t"]






*bathub
[cm][black]
[set_mise][bg time="0" method="crossfade" storage="bg/mod/bg_bathtub.jpg" ]
[layermode graphic="effect/H/bath_ef.png" time="0" mode="lighten" wait="false" ]
[chara_mod name="ef2" time="0" storage="mod/bath/bathtub.png"][f/sp_nt]
[chara_mod name="eyes" time="0" storage="Hf/body/e_close-.png"]
[chara_mod name="mayu" time="0" storage="Hf/body/y_def.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_s.png"]
[call target="show_mise"]
[syl][um_06]Hah~![lr_]
[chara_mod name="eyes" time="0" storage="Hf/body/e_close.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_sn.png"]
[random_3][if exp="f.r==1"]
[kimochi_ii_1]Cảm giác thật tuyệt nhỉ? [name].[lr_]
[elsif exp="f.r==2"]
[ii_1]Cảm giác thích thật đấy. [name].[p_]
[else][ii_1]Ngâm mình thế này thật tuyệt quá.[p_][endif]
[chara_mod name="eyes" time="0" storage="Hf/body/e_def_nh.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_sn.png"]
[chara_mod name="gloves" time="0" storage="mod/bath/b_hand.png"]
Em nghĩ mình có thể ở trong này bao lâu cũng được.[p]
[chara_mod name="eyes" time="0" storage="Hf/body/e_close.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_s.png"]
Và cùng với [name] nữa chứ![sm_09][p]
[chara_mod name="eyes" time="0" storage="Hf/body/e_def_nh.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_n_def.png"]
Mà khoan đã...![lr]
[chara_mod name="eyes" time="0" storage="Hf/body/e_close-.png"]
[chara_mod name="mouth" time="0" storage="Hf/body/m_a_def.png"]
[chara_mod name="gloves" time="0" storage="mod/bath/b_hand.png"]
Chúng ta còn phải ăn sáng nữa chứ...[p]
[chara_mod name="mouth" time="0" storage="Hf/body/m_sn.png"]
[um_09].[wait time="900"].[wait time="900"].[wait time="900"][um_10][p]
[chara_mod name="mouth" time="0" storage="Hf/body/m_s.png"]
[chara_mod name="eyes" time="0" storage="Hf/body/e_def_nh.png"]
Chúng ta ra ngoài thôi nhé? [name][p]
[black][stopbgm]
[_](...
[dress_random]
[random_3][if exp="f.r==1"][eval exp="f.front_hair=0"]
[elsif exp="f.r==2"][eval exp="f.front_hair=4"]
[else][eval exp="f.front_hair=6"][endif]
[eval exp="f.hair_style=0"][eval exp="f.hair_band=0"][eval exp="f.pin=0"][eval exp="f.neck=0"][eval exp="f.socks=0"]
[set_stand][f/sp_nt][bgm_JH]
[bg time="0" method="crossfade" storage="bg/mod/bg_bath_01.jpg" ][show_stand]
[syl][f/sclp][um_10]Chúng ta cùng ăn sáng nhé. [name][p_][f/sp_nt]
[bg time="500" method="crossfade" storage="bg/db-a-f.jpg" ]
[f/sp]Anh ra bàn ngội đợi chút nhé. Em dọn đồ ăn lên ngay ạ![p_]
[set_black][chara_00][chara_hide_all]
[jump storage="mod/morning_eat.ks" target="*lunch"]
[s]




*show_dress
[chara_mod name="window" time="0" storage="00.png" ]
[chara_mod name="body" time="0" storage="s/body/dress_b_nontag.png" ]

[chara_show name="hair_b" time="0" wait="false" left="82" zindex=5 ]
[chara_show name="ribbon_b" time="0" wait="false" left="82" zindex=10 ]
[chara_show name="body" time="0" wait="false" left="82" zindex=15]
;[chara_show name="b_acc" time="0" wait="false" left="82" zindex=20]
[chara_show name="under_p" time="0" wait="false" left="82" zindex=25]
[chara_show name="under_b" time="0" wait="false" left="82" zindex=30]
;[chara_show name="gloves" time="0" wait="false" left="82" zindex=32]
;[chara_show name="socks" time="0" wait="false" left="82" ]
;[chara_show name="ef2" time="0" wait="false" left="82" ]
[chara_show name="dress" time="0" wait="false" left="82" zindex=35]
[chara_show name="neck" time="0" wait="false" left="82" zindex=40]

[chara_show name="head" time="0" wait="false" left="82" zindex=45]
[chara_show name="eyes" time="0" wait="false" left="82" zindex=50]
[chara_show name="mouth" time="0" wait="false" left="82" zindex=55]
[chara_show name="mayu" time="0" wait="false" left="82" zindex=60]
[chara_show name="glasses" time="0" wait="false" left="82" zindex=65]
[chara_show name="hair_f" time="0" wait="false" left="82" zindex=70]


[chara_show name="pin" time="0" wait="false" left="82" zindex=75]
[chara_show name="ribbon" time="0" wait="false" left="82" zindex=80]
[chara_show name="hat" time="0" wait="false" left="82" zindex=85]

[hide_black][return]

*show_mise
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="body" time="0" storage="mod/bath/b0.png" ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=130]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=140]
[chara_show name="gloves" time="0" wait="false" left="0.1" zindex=20 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="ef2" time="0" wait="false" left="0.1" zindex=190 ]
[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ]
[hide_black][return]


*random_dress
[random_4]
[if exp="f.lust>=250 && f.r==1"][random_Du_xb_ch]
[elsif exp="f.lust>=250 && f.r==2][random_Du_xc_ch][endif]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[if exp="f.talk==1 && f.Dc_xa[0]=='got'"]
[random_Dc_xa]
[elsif exp="f.talk==2 && f.Dc_xb[0]=='got'"]
[random_Dc_xb]
[elsif exp="f.talk==3 && f.Dc_xc[0]=='got'"]
[random_Dc_xc]
[else][eval exp="f.neck=0"][eval exp="f.dress=0"]
[endif]
[eval exp="f.hair_band=0"][eval exp="f.hair_style=0"][eval exp="f.pin=0"][eval exp="f.socks=0" ][eval exp="f.neck=0"][eval exp="f.gloves=0"]
[if exp="f.dress>=1000 && f.dress<=1009"][eval exp="f.under_p=0"][endif]
[if exp="f.dress>=1"][eval exp="f.under_b=0"][endif]
[eval exp="f.hat=0"][eval exp="f.glasses=0"][eval exp="f.neck=0"][eval exp="f.gloves=0"]
[return]












