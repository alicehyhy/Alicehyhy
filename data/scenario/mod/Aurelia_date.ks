;;========script_by_ichibikun============

*begin
[cm][eval exp="f.aurelia_date=1"]
[bgm_RG]
[bg  time="1000"  method="crossfade"  storage="bg/market.jpg" ]
[chara_mod name="h" time="0" storage="00.png"]
[chara_show name="h" time="1" zindex="1" ]
[aur_s][wait time="10"]
[chara_show name="sub" time="500" zindex="10" ]
[_]Chợ hôm nay cũng không đông lắm.[r]
Cũng không khó để tìm được cửa hàng của [font color="lightsteelblue"]Ferrum[resetfont][p]
[anim name="sub" time="200" left="-290" ]
[chara_mod  name="h"  time="0"  storage="o/sub/smile.png" ]
[anim name="h" time="200" left="360" ]
#Ferrum
Ồ, chào hai vị khách quý.[lr]
Tôi có thể giúp gì cho quý ngài và quý cô xinh đẹp đây?[p]
[aur_sm]
#Aurelia
Ồ thật ngại quá, ông [font color="lightsteelblue"]Ferrum[resetfont][lr]
Tôi cũng không muốn làm phiền ông nhưng...[p]
Ngài bác sỹ này là vị khách đã yêu cầu một số sản phẩm từ cửa hàng của tôi.[lr]
Nguyên liệu của tôi đã hết mất rồi, và vị khách này không muốn chờ đợi lâu hơn[r]
nữa...[p][aur_s]
Tôi thực sự không muốn thúc giục nhưng.[wait time="300"].[wait time="300"].[wait time="300"][r]
[aur_sm]Để vị bác sỹ đáng kính của thị trấn này không hài lòng thì...[lr]
[aur_s]Tôi thực sự thấy áy náy lắm...fufu~♪♪♪[p]
[_]
(Tôi có chút ngạc nhiên vì thực sự là tôi không nhớ mình có đặt làm cái gì[r] 
từ cửa hàng của cô ấy.[p]
#Ferrum
[chara_mod  name="h"  time="0"  storage="o/sub/def.png" ]
V-Vậy ra vị khách 'đặc biệt quan trọng' của quý cô ấy là...[lr]
Ngài bác sỹ...[p]
[chara_mod  name="h"  time="0"  storage="o/sub/smile.png" ]
Vậy được rồi, tôi sẽ chuyển số hàng đó lên sớm vào ngày mai[lr]
Chỉ trong ngày mai, chắc chắn hàng sẽ đến tận cửa shop của cô.[p]
#Aurelia
[aur_sm]Ồ! Nếu được vậy thì thật tốt quá, ông Ferrum.[lr]
Ông thực sự giúp tôi giải quyết được rắc rối này rồi đó.[lr]
[aur_s]Vậy tôi sẽ không làm phiền ông thêm nữa.[p]
.[wait time="300"].[wait time="300"].[wait time="300"][cm]
#Ferrum
Vậy hai vị đi thong thả nhé![p]
[chara_mod  name="h"  time="0"  storage="00.png" ]
[black]
[chara_stop]
[_](Chúng tôi rời khỏi cửa hàng của Ferrum và quay lại thị trấn...[p]
[eval exp="f.act=5"]
[bg_town][act_win_stand][chara_show name="sub" time="500" zindex="10" ]
#Aurelia
[aur_sm]Thật ngại quá vì đã làm phiền anh như vậy.[lr]
[aur_s]À.. mà cũng chưa muộn lắm. Nếu anh không bận gì thì cùng uống cà phê với [r]
tôi nhé! Tôi mời.[p]
[_](Thật khó mà từ chối được lời mời của cô ấy nên chúng tôi cùng vào một tiệm cà phê[r]
bên đường.[p]
[black][bg_restaurant][stopbgm][bgm_DS]
[chara_show name="sub" time="400" zindex="10" ]
[chara_mod name="h" time="0" storage="00.png"]
[chara_show name="h" time="1" zindex="1" ]
[anim name="sub" time="200" left="-300" ]
[chara_mod  name="h"  time="0"  storage="o/sub/nephy.png" ]
[anim name="h" time="200" left="350" ]
#Nephy
Chào mừng quý khách đến với cửa tiệm.[p]
Ủa?...Đây là...[lr]
Ngài bác sỹ cùng với cô.[wait time="300"].[wait time="300"].[wait time="300"]A-Aurelia...?[p]
Xin lỗi quý k-khách... hai vị dùng gì ạ?[lr]
Xin mời hai vị ngồi vào bàn ạ.[p]
[chara_mod name="h" time="0" storage="00.png"][chara_hide name="h" time="0"][wait time="10"]
[anim name="sub" time="200" left="0" ]
[chara_stop]
#
(.[wait time="300"].[wait time="300"].[wait time="300"][cm][black]
[chara_mod name="sub" time="0" storage="00.png"]
[bg time="500" method="crossfade" storage="bg/mod/cafe_aur.jpg" ][stop_bgm][bgm_LS]
[chara_mod name="tx" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="o/food/aur_ban.png"]
[chara_mod name="p" time="0" storage="o/food/aur_chair.png"]
[chara_mod name="tear" time="0" storage="00.png"]
[chara_show name="sub" time="1" zindex="10" ]
[chara_show name="h" time="1" zindex="15" ]
[chara_show name="p" time="1" zindex="5" ]
[chara_show name="tear" time="1" zindex="20" ]
[aur_sl]
(Chúng tôi chọn một bàn còn trống ở khu vực gần cửa sổ.[p]

(.[wait time="300"].[wait time="300"].[wait time="300"][chara_mod name="tear" time="300" storage="o/food/aur_cafe.png"]
Sau một lúc cô phục vụ đã màn tới hai tách cà phê.[p]
#Aurelia
[aur_sml]
Mời anh dùng.[p]
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aurelia_huge/Aurelia_a_o_hug_00.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aurelia_huge/Aurelia_b_o_hug_00.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aurelia_huge/Aurelia_c_o_hug_00.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aurelia_huge/Aurelia_xa_hug_00.png"]
[endif]
[eval exp="f.aur_hat='down'"]
[aur_sml][wait time="50"][chara_show name="tx" time="0" zindex="7" ][wait time="500"][aur_srl]
#
Aurelia bỏ mũ của cô ấy xuống và bắt đầu dùng tách cà phê của mình[p]
#Aurelia
[aur_smrl]
Cảm ơn anh rất nhiều vì đã giúp tôi giải quyết rắc rối hôm nay.[lr]
Anh biết không, ở thị trấn này anh có một sức ảnh hưởng rất lớn với mọi người đó.[p]
[aur_srl]
[_]
(.[wait time="300"].[wait time="300"].[wait time="300"]Chúng tôi cùng thưởng thức cà phê và nói chuyện phiếm.[lr]
Hình như mọi người xung quanh khá là để ý đến chúng tôi.[p]
.[wait time="300"].[wait time="300"].[wait time="300"][cm]
[black][stopbgm][bgm_ST][eval exp="f.aur_hat='up'"]
[bg_town][aur_s]
[chara_show name="sub" time="500" zindex="10" ]
[_](Chúng tôi rời khỏi quán cà phê lúc khá muộn.[lr] 
Tôi đi cùng Aurelia về đến cửa hàng của cô ấy rồi quay về....[p]
#Aurelia
[aur_sm]Cảm ơn anh đã đi cùng tôi về. Hen gặp lại nhé! Ngài bác sỹ.[p][aur_s]
[_].[wait time="300"].[wait time="300"].[wait time="300"][cm]
[chara_mod name="sub" time="700" storage="00.png"]
[eval exp="f.aur_love=1"]
[jump storage="mod/hiroba_alone.ks" target="*go_home"]

[s]





















