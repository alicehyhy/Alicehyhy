*aaa
[cm][eval exp="f.act=7" ][eval exp="f.love=f.love+7" ][return_bace]

;;デバッグテスト
*chara_test
[cm][show_message_w]
[set_stand][f/s_nt][show_stand][p_]
[set_sit][f/s_nt][show_sit][p_]
[set_dinner][f/s_nt][show_dinner][p_]
[set_nade][f/s_nt][show_nade][p_]
;[set_work][f/s_nt][show_work][p_]
;[set_mise][f/s_nt][show_mise][p_]
[set_Hx1][show_Hx1][p_]
[set_Hx2][show_Hx2][p_]
;[set_dress][f/nt][show_dress]
[jump storage="sys/dress.ks" target="*change_dress" ]

*bbb
[cm]

;Cross[p]
;[chara_mod cross="false" wait="true" name="dress" time="500" storage="s/dress/R/c1.png" ]
;[chara_mod cross="false" wait="true" name="arm" time="500" storage="s/dress/N/g1.png" ]
;[p]Cross[p]
;[chara_mod cross="false" wait="true" name="dress" time="500" storage="s/dress/R/c2.png" ]
;[chara_mod cross="false" wait="true" name="arm" time="500" storage="s/dress/N/g2.png" ]
;[p]Wait[p]
;[chara_mod cross="true" wait="false" name="dress" time="500" storage="s/dress/R/c1.png" ]
;[chara_mod cross="true" wait="false" name="arm" time="500" storage="s/dress/N/g1.png" ]
;[p]Wait[p]
;[chara_mod cross="true" wait="false" name="dress" time="500" storage="s/dress/R/c2.png" ]
;[chara_mod cross="true" wait="false" name="arm" time="500" storage="s/dress/N/g2.png" ]
[p]Both[p]
[chara_mod cross="false" wait="false" name="dress" time="500" storage="s/dress/R/c1.png" ]
[chara_mod cross="false" wait="false" name="arm" time="500" storage="s/dress/N/g1.png" ]
[chara_mod cross="false" wait="false" name="hat" time="500" storage="s/hat/D/e1.png" ]
[p]Both[p]
[chara_mod cross="false" wait="false" name="dress" time="500" storage="s/dress/R/c2.png" ]
[chara_mod cross="false" wait="false" name="arm" time="500" storage="s/dress/N/g2.png" ]
[chara_mod cross="false" wait="false" name="hat" time="500" storage="s/hat/D/e2.png" ]

[jump target="*bbb" ]


[p]

;[set_work][f/nt][show_work][p][jump storage="H/nurse.ks" target="*nurse" ]

;[set_work][f/s_nt][show_work][p_]
;[f/s][p_]
;[f/nt][p_]
[return_bace]

[jump storage="sys/debug.ks" target="*bbb" ]

[jump storage="sys/debug.ks" target="*all_unlock" ]

;;all_unlock
*all_unlock

;;初期変数
;[title name="TeachingFeeling_ver2.0.β-b" ][eval exp="f.ver='2.0β-c'" ]
;親愛度、淫乱度、名前、関係進行
[eval exp="f.love=2000" ][eval exp="f.lust=1000" ]
[eval exp="f.name='ご主人様'" ][eval exp="f.name_h=0" ]
[eval exp="f.v_name=[0,'','','']" ][eval exp="f.p_name=[0,'','','']" ][eval exp="f.sex_name=[0,'','','']" ][eval exp="f.x_speak=0" ]
[eval exp="f.step=6" ]
;初期イベント用進行管理
[eval exp="f.rape=0" ][eval exp="f.trust=0" ][eval exp="f.nade=1" ][eval exp="f.talk=1" ]
[eval exp="f.intro_flag=0" ][eval exp="f.first_wear=0" ]
[eval exp="f.shop=0" ][eval exp="f.hiroba_t=0" ][eval exp="f.cafe=0" ]
;イベント初回管理
[eval exp="f.wood=0" ][eval exp="f.book=1" ][eval exp="f.market=0" ][eval exp="f.out=0" ]
;現在の服
;[eval exp="f.dress=1" ][eval exp="f.socks=0" ]
;[eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][eval exp="f.glasses=0" ]
;[eval exp="f.under_p=0" ][eval exp="f.under_b=0" ][eval exp="f.b_acc=0" ]
;[eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ]
;アイテム所持変数
[eval exp="f.flower=40" ][eval exp="f.flower_b=40" ]
[eval exp="f.drugx=50" ][eval exp="f.drugz=50" ]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
[eval exp="f.drug_use='non'" ]
;着せ替えコーディネート
;[eval exp="f.sav_dress=[]" ][eval exp="f.sav_neck=[]" ][eval exp="f.sav_hair_f=[]" ][eval exp="f.sav_pin=[]" ]
;[eval exp="f.sav_hat=[]" ][eval exp="f.sav_hair=[]" ][eval exp="f.sav_hair_b=[]" ]
;[eval exp="f.sav_glasses=[]" ][eval exp="f.sav_gloves=[]" ][eval exp="f.sav_socks=[]" ]
;[eval exp="f.sav_under_b=[]" ][eval exp="f.sav_under_p=[]" ][eval exp="f.sav_acce=[]" ][eval exp="f.sav_color=[]" ]
;[eval exp="f.d_save_n=['ｺｰﾃﾞｨﾈｰﾄ0','ｺｰﾃﾞｨﾈｰﾄ1','ｺｰﾃﾞｨﾈｰﾄ2','ｺｰﾃﾞｨﾈｰﾄ3','ｺｰﾃﾞｨﾈｰﾄ4','ｺｰﾃﾞｨﾈｰﾄ5','ｺｰﾃﾞｨﾈｰﾄ6','ｺｰﾃﾞｨﾈｰﾄ7','ｺｰﾃﾞｨﾈｰﾄ8','ｺｰﾃﾞｨﾈｰﾄ9','ｺｰﾃﾞｨﾈｰﾄ10','ｺｰﾃﾞｨﾈｰﾄ11','ｺｰﾃﾞｨﾈｰﾄ12','ｺｰﾃﾞｨﾈｰﾄ13','ｺｰﾃﾞｨﾈｰﾄ14','ｺｰﾃﾞｨﾈｰﾄ15','ｺｰﾃﾞｨﾈｰﾄ16','ｺｰﾃﾞｨﾈｰﾄ17','ｺｰﾃﾞｨﾈｰﾄ18','ｺｰﾃﾞｨﾈｰﾄ19','ｺｰﾃﾞｨﾈｰﾄ20','ｺｰﾃﾞｨﾈｰﾄ21','ｺｰﾃﾞｨﾈｰﾄ22','ｺｰﾃﾞｨﾈｰﾄ23','ｺｰﾃﾞｨﾈｰﾄ24','ｺｰﾃﾞｨﾈｰﾄ25','ｺｰﾃﾞｨﾈｰﾄ26','ｺｰﾃﾞｨﾈｰﾄ27','ｺｰﾃﾞｨﾈｰﾄ28','ｺｰﾃﾞｨﾈｰﾄ29','ｺｰﾃﾞｨﾈｰﾄ30','ｺｰﾃﾞｨﾈｰﾄ31','ｺｰﾃﾞｨﾈｰﾄ32','ｺｰﾃﾞｨﾈｰﾄ33','ｺｰﾃﾞｨﾈｰﾄ34','ｺｰﾃﾞｨﾈｰﾄ35','ｺｰﾃﾞｨﾈｰﾄ36','ｺｰﾃﾞｨﾈｰﾄ37','ｺｰﾃﾞｨﾈｰﾄ38','ｺｰﾃﾞｨﾈｰﾄ39','ｺｰﾃﾞｨﾈｰﾄ40']" ]
;他
;[eval exp="f.d_save=[]" ][eval exp="f.ch_win=1" ][eval exp="f.act=0" ][eval exp="f.hist_mode=0" ]

;日数、H回数記録
[eval exp="f.day=1" ]
[eval exp="f.sex=0" ][eval exp="f.heavn=0" ][eval exp="f.drink=0" ]
[eval exp="f.kake=0" ][eval exp="f.blow=0" ][eval exp="f.cum=0" ]
[eval exp="f.self=3" ]
[eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ]
;感度
[eval exp="f.h_m=0" ][eval exp="f.h_b=0" ][eval exp="f.h_c=0" ][eval exp="f.h_v=0" ]
;コマンドH用変数
[eval exp="f.h_act='non'" ][eval exp="f.h_right='non'" ][eval exp="f.h_left='non'" ]
[eval exp="f.h_sex=0" ][eval exp="f.s_ex=0" ][eval exp="f.y_ex=0" ][eval exp="f.h_cum_pos='select'" ]
[eval exp="f.wet=0" ][eval exp="f.s_feel=0" ][eval exp="f.y_feel=0" ]
;H回想
[eval exp="f.m_first=1" ][eval exp="f.m_x=1" ][eval exp="f.m_xx=1" ]
[eval exp="f.m_xxx=1" ][eval exp="f.m_morning=3" ][eval exp="f.m_wood=3" ]
[eval exp="f.m_mouth=3" ][eval exp="f.m_nurse=3" ]

;服/Dc
[eval exp="f.Dc_b=['got',1,1,1,1,1,1]"][eval exp="f.Dc_c=['got',1,1,1,1,1,1,1]"][eval exp="f.Dc_e=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_f=['got',1,1,1]"][eval exp="f.Dc_g=['got',1,1,1,1,1,1]"][eval exp="f.Dc_h=['got',1,1,1,1]"]
[eval exp="f.Dc_i=['got',1,1,1,1,1,1]"][eval exp="f.Dc_j=['got',1,1,1,1,1]"][eval exp="f.Dc_k=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_l=['got',1,1,1,1,1]"][eval exp="f.Dc_m=['got',1,1,1,1,1]"][eval exp="f.Dc_n=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dc_o=['got',1,1,1,1,1,1]"][eval exp="f.Dc_p=['got',1,1,1,1,1,1]"][eval exp="f.Dc_q=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_xa=['got',1,1,1,1,1,1,1,1]"][eval exp="f.Dc_xb=['got',1,1,1,1,1,1,1,1]"][eval exp="f.Dc_xc=['got',1,1,1,1,1,1,1]"]
;リボン/Dr
[eval exp="f.Dr_a=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Dr_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dr_c=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Dr_d=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Dr_e=['got',1,1,1,1,1,1,1,1,1]"]
;ヘアピン/Dp
[eval exp="f.Dp_a=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Dp_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dp_c=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Dp_d=['got',1,1,1]"]
;メガネ/Dg
[eval exp="f.Dg_a=['got',1,1,1,1,1,1,1,1,1,1]"][eval exp="f.Dg_b=['got',1,1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dg_c=['got',1,1,1,1,1,1,1,1,1,1]"]
;ヘッドアクセ/Dh
[eval exp="f.Dh_a=['got',1,1]"][eval exp="f.Dh_b=['got',1,1]"][eval exp="f.Dh_d=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dh_e=['got',1,1,1,1,1]"][eval exp="f.Dh_f=['got',1,1,1,1,1,1,1]"]
;靴下/Ds
[eval exp="f.Ds_a=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Ds_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_b=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Ds_c=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_d=['got',1,1,1,1,1,1,1,1,1]"][eval exp="f.Ds_e=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_f=['got',1,1,1,1,1,1,1,1,1]"]
;ボディアクセ/Dac
;[eval exp="f.Dac_a=['got',1,1,]"]
[eval exp="f.Dac_b=['got',1,1]"][eval exp="f.Dac_c=['got',1,1]"][eval exp="f.Dac_d=['got',1,1]"]
;首元/Dne
[eval exp="f.Dne_a=['got',1,1,1,1,1,1,1,1]"][eval exp="f.Dne_b=['got',1,1,1,1]"][eval exp="f.Dne_c=['got',1,1,1,1,1,1,1,1]"]
;下着/Du
[eval exp="f.Du_a=['got',1,1,1,1,1,1,1]"][eval exp="f.Du_b=['got',1,1,1,1,1,1,1]"][eval exp="f.Du_c=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_xa=['got',1,1,1,1,1,1,1]"][eval exp="f.Du_xb=['got',1,1,1,1,1,1,1]"][eval exp="f.Du_xc=['got',1,1,1,1,1,1,1]"]

;[iscript]
;delete f.hiroba_t; delete f.cafe; delete f.shop; delete f.first_wear; delete f.nade; delete f.intro_flag; delete f.trust; delete f.rape; delete f.talk;
;[endscript]

[return_bace]






