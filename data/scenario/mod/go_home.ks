*event
[bg time="400" method="crossfade" storage="bg/door_n.jpg" ]
[f/s_nt][show_stand][bgm_SG]
[eval exp="f.out=1" ]
[f/sp]Mừng anh đã về! [name].[p_] 
[f/sclp]Em vừa chuẩn bị bữa tối xong.[lr_]
;[if exp="f.sexless>=2 || f.sexless_c>=1"][else]
;[f/ssp]Chúng ta cùng ăn sau khi anh tắm xong nhé![p_]
;[jump storage="mod/nigh_dinner.ks" target="*lunch"]
;[endif]
[f/sp]Anh muốn ăn tối luôn hay tắm trước...❤❤❤?[p_]
[f/re]Hay là...[l_][f/ssp]E-Em trước?
[random_3]
[if exp="f.r==1"][sm_05]
[elsif exp="f.r==2"][sm_07][else][sm_09][endif]
[p_]
[button storage="mod/nigh_dinner.ks" target="*lunch" graphic="ch/go_home_lunch.png" x="0" y="175" ]
[button target="*bat" graphic="ch/go_home_bat.png" x="0" y="325" ]
[if exp="f.dress>=21 && f.dress<=29"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ]
[elsif exp="f.dress>=41 && f.dress<=49"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ]
[elsif exp="f.dress>=1000 && f.dress<=1029"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ][endif]

[s]


*bat
[cm][syl]
[f/sp_nt][um_10]Umm~...[l_][f/ssp]P-Phòng tắm đã sẵn sàng rồi ạ![p_]
[jump storage="mod/bath.ks" target="*begin"]


*sex
[cm][f/p_nt]
[a_02]Umm?[p_]
[jump storage="mod/H/H_door.ks" target="*begin"]











