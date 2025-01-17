;;---code_by_ichibikun

*begin
[eval exp="f.aurelia_tl='non'"]
[black]
[stopbgm]
...[p]
[playbgm  loop="true"  storage="Aquamarine_Temperature.ogg" ]
[bg  time="100"  method="crossfade"  storage="bg/mod/bg-town-night-t2.gif" ]
[cm ]
[_]
[random_2][if exp="f.r==1"]
(Bỗng nhiên...Cơ thể tôi cảm thấy một cảm giác quen thuộc...[p] 
Sau một hồi lang thang trên con phố lạnh lẽo đang tràn ngập tuyết phủ.[r] 
Bỗng tôi thấy có một có một vài tia sáng le lói từ cửa hàng quen thuộc.[p]
[else]
(Sau một hồi lang thang trên đường phố lạnh lẽo dưới trời tuyết.[r] 
Bỗng tôi thấy có một có một cửa hàng quen thuộc vẫn còn sáng đèn.[p]
Hình như có gì đó khá quen thuộc và kì lạ lúc này.[p][endif]
(tôi nên làm gì đây.
[button target="*shop" graphic="ch/au_1_true.png" x="0" y="300" ]
[button target="*home" graphic="ch/au_1_false.png" x="0" y="450" ][s]

*home
[cm]
[eval exp="f.dream='aureliaf'"]
Có lẽ tôi nên nhanh chóng trở về không sẽ cảm lạnh mất.[p]
[bg  time="1000"  method="crossfade"  storage="bg/black.jpg" ]
...[p]
[jump storage="mod/dream.ks" target="*dream_aurelia_beore"]
[s]

*shop
[cm]
[if exp="f.au_dream=='yet'"][else]
[eval exp="f.au_dream='non'"][endif]
[stopbgm]
[playbgm  loop="true"  storage="Deep_Scarlet.ogg" ]
[bg  time="100"  method="crossfade"  storage="bg/mod/shop_H_.jpg" ]
[chara_mod name="h" time="1" storage="00.png" ]
[chara_show name="h" time="1"  ]
[chara_mod name="sub" time="1" storage="o/sub/mod/Aurelia_b.png" ]
[chara_mod name="h" time="1" storage="o/sub/mod/Aurelia_b_x_00.png" ]
[chara_show name="sub" time="700"  ]
#Aurelia
[random_2][if exp="f.r==1"]
;[emb exp="f.au_dream"][p]
Ồ! Xin chào quý khách. Chào mừng quý khách đến với cửa hàng![p][else]
Ồ! Kính chào quý khách! Muộn thế này rồi mà quý khách vẫn tới đây ư?[p][endif]
Tuy nhiên[wait time="300"].[wait time="300"].[wait time="300"]. Thật ngại quá, cửa hàng chúng tôi hôm nay tạm nghỉ mất rồi.[p]
Bên ngoài hiện giờ trời khá lạnh, anh nên nghỉ ở đây một chút cho ấm người đã rồi[r] 
hẵng đi.[p] 
Tôi sẽ mời quý khách một chút trà nóng vậy.[p]
[chara_mod name="h" time="10" storage="00.png" wait="true" ]
[chara_mod name="sub" time="700" storage="00.png" wait="true" ]
[_](Cô chủ cửa hàng đi vào phòng lấy cho tôi một tách trà.[lr]
Tự nhiên hôm nay tôi cảm thấy yên bình một cách kì lạ.[p]
[chara_mod name="sub" time="700" storage="o/sub/mod/Aurelia_b.png" wait="true"]
[chara_mod name="h" time="1" storage="o/sub/mod/Aurelia_b_x_00.png" ]
#Aurelia
Của quý khách đây!.[p]
#
(.[wait time="300"].[wait time="300"].[wait time="300"].[cm]
#Aurelia
[random_2][if exp="f.r==1"]
Tôi cảm thấy ngày hôm nay trôi qua thật nhanh chóng.[lr]
Chắc anh cũng thấy vậy chứ.[p][else]
Thời tiết thế này thật tệ. Nó khiến tôi cảm thấy hôm nay quả là một ngày nhàm chán.[p][endif]
;[if exp="f.au_dream=='non'"]
;[eval exp="f.au_dream='yet'"]
;[eval exp="f.dream='aureliaf'"]
;#
;(Có vẻ như tôi đã làm phiền cô ấy.[p]
;[jump target="*to_next_1_"][endif]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_x.png" wait="true"]
#
[button target="*to_next_1" graphic="ch/au_1_ask.png" x="0" y="300" ]
[button target="*to_next_1_" graphic="ch/au_1_ask_.png" x="0" y="450" ][s]

*to_next_1_
[cm]
#Aurelia
[eval exp="f.dream='aureliaf'"]
[chara_mod name="sub" time="500" storage="o/sub/Aurelia_b.png" wait="true"]
Ồ! Đừng khách sáo thế chứ![lr]
Ngài bác sỹ luôn được chào đón ở đây mà.[l] Anh có thể ghé qua bất cứ khi nào.[p]
#
(Chúng tôi cùng tám chuyện trong khi thưởng thức tách trà và đợi tan cơn bão tuyết.[lr]
Tôi đã hiểu thêm một chút về cô ấy.[p]
...[p]
[jump storage="mod/dream.ks" target="*dream_aurelia_beore"]
[s]

*to_next_1
[cm]
(.[wait time="300"].[wait time="300"].[cm]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_sm_red_x.png" wait="true"]
#Aurelia
Anh thắc mắc điều đó sao?[lr]
[random_2][if exp="f.r==1"]
Fu~fu~♪! Câu hỏi đó có ý nghĩa gì vậy? Ngài bác sỹ.[p][else]
Fu~fu~♪! Anh hỏi vậy khiến tôi thấy bối rối đó!.[p][endif]
Tôi cũng không nhớ vì lý do gì nữa.[lr]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_red_x.png" wait="true"]
[random_2][if exp="f.r==1"]
Chỉ là tôi thấy cuộc sống thế này tốt hơn với tôi thôi.[p][else]
Chắc hẳn đó là một câu chuyện dài và không mấy ấn tượng đâu.[p][endif]
Mà hình như anh đã hỏi câu này nhiều lần rồi. Anh còn nhớ không Fu~fu~♪![p]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_sm_red_x.png" wait="true"]
[random_2][if exp="f.r==1"]
Chẳng phải hôm nay anh đang ở đây rồi sao. Fu~fu~♪![p][else]
Chẳng phải anh đã ở đây với tôi hôm nay rồi sao. Fu~fu~♪![p][endif]
Có thể anh chưa biết nhưng.[wait time="300"].[wait time="300"].[r] 
Ngài bác sỹ luôn được chào đón ở nơi này mọi lúc,[r]
Hãy ghé qua đây mỗi khi anh muốn thay đổi tâm trạng nhé...♥♥♥♪[p]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_red_x.png" wait="true"]
#
[random_2][if exp="f.r==1"]
(Cô ấy vẫn kì lạ như mọi khi.[lr] Cũng không biết vì sao tôi lại có một cảm giác ấm áp quen thuộc...[r] 
Mọi thứ hiện lên thật mơ hồ nhưng nó lại khá tương đồng với suy nghĩ của tôi.[p][else]
(Cô ấy vẫn nói những điều kì lạ như mọi khi.[lr] Cũng không biết vì lý do gì nhưng cảm giác ấm áp này thật quen thuộc[p] 
[endif]

#Aurelia
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_sm_red_x.png" wait="true"]
Anh cũng từng có một thời gian sống một mình trước kia nhỉ? [p]
Có cảm thấy buồn vì điều đó không?[p]
#
Cô ấy.[r](.[wait time="300"].[wait time="300"].[wait time="300"][cm]
#Aurelia
[random_4][if exp="f.r==1"]
Coi nào, xem chừng tuyết đang rơi ngày một lớn rồi kìa.[lr]
Có vẻ như các con đường bây giờ không thể bước đi nổi nữa đâu.[p]
Nếu không ngại anh cũng có thể ở lại đây thêm một lúc đó.[lr] 
Sẽ thật tệ nếu vị bác sỹ duy nhất của thị trấn này bị cảm lạnh đó fu fu~♪[p]
[else]
Nhìn ngoài kia xem.[wait time="300"].[wait time="300"].[wait time="300"][r]
Tuyết đang rơi ngày một lớn rồi kìa.[wait time="300"] Có vẻ anh sẽ không thể về được nữa rồi.[p]
Nếu không ngại anh hãy ở lại đây thêm một lúc đó.[lr] 
Tôi sẽ rất đau lòng nếu anh bị cảm lạnh đó fu fu~♪[p]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_red_x.png" wait="true"]
[endif]
#
(Chúng tôi cùng tám chuyện khá lâu, những câu truyện thường ngày về cuộc sống..[p]
#Aurelia
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_sm_red_x.png" wait="true"]
Ồ! Có thể anh không biết nhưng mỗi khi đêm xuống, và nhất là trong thời tiết thế[r]
này phụ nữ luôn cảm thấy cô đơn đó. Fufu~♪[p]
[chara_mod name="sub" time="500" storage="o/sub/mod/Aurelia_b_sm_red_x.png" wait="true"][wait time="500"][stopbgm]
[chara_mod name="h" time="1" storage="00.png" ]
[chara_mod name="sub" time="300" storage="00.png" ]
[chara_mod name="sub" time="1000" storage="o/sub/aurelia_huge/Aurelia_b_red_x_hug.png" ][wait time="300"]
[chara_mod name="h" time="1" storage="o/sub/aurelia_huge/Aurelia_b_x_hug_00.png" ]
[playbgm  loop="true"  storage="Magenta_Touch.ogg" ]
#
(Không hiểu sao, tự nhiên tôi tiến lại gần cô ấy.[lr] 
Cô ấy không hề có phản ứng nào đặc biệt ngoài ánh mắt đang nhìn tôi với một sự[r]
mê hoặc.[p]
("Cô ấy thật đẹp, cô ấy thật quyến rũ" - Đó là những gì tôi muốn nói.[p]
#Aurelia
.[wait time="300"].[wait time="300"].[cm]
[random_4][if exp="f.r==1"]
Anh không cần dừng lại như thế đâu... fufu~♪[p]
[elsif exp="f.r==2"]
Anh cứ tiếp tục đi... fufu~♪[p]
[elsif exp="f.r==3"]
Ổn thôi mà... fufu~♪[p]
[else]fufu~♪.[p][endif]

;[chara_mod name="sub" time="700" storage="00.png" ]
#
Tôi tiến lại gần cô ấy, bỗng nhiên mọi thứ xung quanh tôi đều trở nên mờ nhạt.[p] 
[chara_mod name="h" time="1" storage="o/sub/aurelia_huge/Aurelia_b_o_hug_00.png" ]
[chara_mod name="sub" time="500" storage="o/sub/aurelia_huge/Aurelia_b_red_o_hug.png" ]
(Tôi bỏ mũ của cô ấy xuống...[lr]
[random_2][if exp="f.r==1"]
(Trong vô thức, có gì đó như đang thôi thúc tôi muốn gần cô ấy hơn nữa,[r] 
muốn chạm vào cô ấy nhiều hơn nữa.[p][else]
(Trong tôi bỗng nổi lên một cảm xúc kì lạ, tôi muốn lại gần cô ấy hơn nữa.[p][endif]
[chara_mod name="x" time="1" storage="o/sub/mod/hand_1.png" ]
[chara_show name="x" time="300" zindex="90" ]
[random_2][if exp="f.r==1"]
(Tôi đưa tay ra và chạm vào vai cô ấy một cách rất tự nhiên, giống như nó là một[r] 
hành động quen thuộc rồi vậy.[p][else]
(Tôi đưa tay ra và khẽ chạm vào cô ấy một cách tự nhiên theo bản năng[lr]
Cô ấy chỉ hơi nhìn theo tay tôi một chút với một nụ cười ngọt ngào thoáng trên[r] 
môi[p][endif]
#Aurelia
[chara_mod name="sub" time="200" storage="o/sub/aurelia_huge/Aurelia_b_sm_red_o_hug.png" ]
Ừm.[wait time="300"].[wait time="300"].[wait time="300"]Có vẻ như anh hôm nay anh lại...[lr]
[chara_mod name="sub" time="200" storage="o/sub/aurelia_huge/Aurelia_b_red_o_hug.png" ]
Vậy thì.[wait time="300"].[wait time="300"].[wait time="300"]Đừng lo, không sao đâu.[p]
;[chara_mod name="x" time="400" storage="o/sub/mod/hand_2.png" ]
[_](Cô ấy không có biểu hiện phản kháng gì hành động của tôi. Tôi muốn chạm vào cô ấy[r]
nhiều hơn nữa...[p]
[chara_mod name="x" time="300" storage="o/sub/mod/hand_3.png" ]

[chara_mod name="x" time="300" storage="o/sub/mod/hand_3.png" ]
#Aurelia
[chara_mod name="sub" time="300" storage="o/sub/aurelia_huge/Aurelia_b_sm_red_o_hug.png" ]
Ưm-m~![r]
Đ-Được mà! Cứ để mọi chuyện xảy ra.[wait time="300"].[wait time="300"].[wait time="300"][r]
Ừm.[wait time="300"].[wait time="300"].[wait time="300"] Nó chỉ là một giấc mơ ngọt ngào thôi...[p]
[chara_mod name="sub" time="300" storage="o/sub/aurelia_huge/Aurelia_b_red_o_hug.png" ]
[chara_mod name="x" time="300" storage="o/sub/mod/hand_4.png" ][wait time="700"]
[chara_mod name="x" time="1" storage="00.png" ]
[chara_mod name="sub" time="1000" storage="o/sub/aurelia_huge/hand_o.png" ]
[chara_mod name="h" time="1" storage="o/sub/aurelia_huge/hand_o_1.png" ][wait time="300"]
[_](Tôi lại gần thêm một chút nữa...[p]
[chara_mod name="sub" time="900" storage="00.png" ]
#Aurelia
Ưm-m~!...[p]
[_]
(Thật mềm mại và ấm áp...[lr]
Có thể cảm nhận được hơi thở ngọt ngào và nhịp đập gấp gáp từ bộ ngực đầy quyến[r] 
rũ này.[p]
[chara_mod name="x" time="600" storage="o/sub/aurelia_huge/cen_dark.png" ]
(Cô ấy dường như hiểu chuyện gì đang diễn ra, không nói thêm lời nào và nhìn tôi với[r] 
ánh mắt đầy cảm xúc...[p] 
[black]


Không còn nghe thấy âm thanh từ những cơn gió ngoài kia,[r] 
chỉ nghe thấy tiếng tim đập liên hồi của tôi và hơi thở nóng bỏng của chúng tôi...[p]
Một cảm giác rạo rực không thể kiềm chế đang mạnh mẽ trỗi dạy trong cơ thể tôi,[r] 
Cùng với sự ấm áp và nóng bỏng khi da thịt tiếp xúc với nhau...[p]
#Aurelia
Ah~♪![lr]
Đừng quá vội vàng như vậy chứ. Đâu phải lần đầu đâu...Fufu~♪[p]
#
(.[wait time="300"].[wait time="300"].[wait time="300"][cm]
[hide_message_w]
;[chara_mod name="sub" time="1" storage="mod/cen1.png" ]
;[chara_show name="sub" time="1"  ]
[bg  time="900"  method="crossfade"  storage="H/mod/au00_1.jpg" ][wait time="800"][show_message_w]
(...Tôi từ từ khám phá cơ thể của cô ấy.[lr]
Cơ thể ngọt ngào và nóng bỏng của cô ấy xâm chiếm mọi ngóc ngách trong tâm trí tôi,[r] 
khiến tôi như muốn tan chảy.[p]
(Cảm xúc của tôi như dâng trào đến đỉnh điểm khi chạm vào cơ thể mềm mại và mùi[r]
hương quyến rũ này.[p]
(Sự nóng bỏng dâng trào này nhuw một sự thăng hoa vô tân.[lr]
Tôi muốn cô ấy, muốn nhiều hơn nữa từ cô ấy.[p]
[hide_message_w]
;[chara_mod name="sub" time="1" storage="mod/cen2.png" ][wait time="100"]
[bg  time="900"  method="crossfade"  storage="H/mod/au00_2.jpg" ][wait time="800"]
;[chara_mod name="x" time="1" storage="mod/cen1.png" ]
;[chara_show name="x" time="1"  ][wait time="100"]
;[chara_mod name="sub" time="1" storage="00.png" ]
[show_message_w]
#Aurelia
Ah~!~[p]
Ư-Um~!.[wait time="300"].[wait time="300"].[p]
#
(Aurelia khẽ nhắm mắt và bắt đầu tận hưởng cảm xúc khoái lạc khi tôi xâm chiếm cô[r] 
ấy.[p]
(Mọi ý thức của chúng tôi về thời gian, về cái lạnh ngoài kia, mọi thứ đề trở nên mờ[r] 
nhạt, chỉ còn một ham muốn mãnh liệt cả hai cơ thể, cảm xúc được hòa làm một.[p]
[bg  time="900"  method="crossfade"  storage="H/mod/au00.jpg" ][wait time="800"]
(Mọi thứ dường như đến thật nhanh chóng nhưng cũng dài vô tận. Sự thỏa mãn dâng[r] 
trào cả về cơ thể lẫn cảm xúc khi chìm đắm trong dục vọng khiến ý thức của tôi bắt[r] 
đầu mất dần.[p]
(Tôi để bản thân mình hoàn toàn đắm chìm trong sự nóng bỏng và ngọt ngào của cơ[r] 
thể phụ nữ...[p]
(Tôi biết đây có lẽ chỉ là giấc mơ...[r] 
nhưng không có cách nào khiến tôi từ chối nó được cả.[p]
(Cô ấy rất tuyệt... thực sự rất tuyệt....[lr]
Tôi muốn nhiều hơn nữa...[p]
[bg  time="1000"  method="crossfade"  storage="bg/black.jpg" ]
(.[wait time="300"][chara_mod name="x" time="1" storage="00.png" ]
.[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"][cm]
[hide_message_w][stopbgm]
[chara_mod name="x" time="600" storage="o/sub/aurelia_huge/cen_dark.png" ]
[bg  time="900"  method="crossfade"  storage="H/mod/au02.jpg" ][wait time="700"]
[bg  time="1000"  method="crossfade"  storage="H/mod/au01.jpg" ][wait time="300"]
[chara_mod name="x" time="800" storage="00.png" ]
[playbgm  loop="true"  storage="Rusty_Gainsboro.ogg" ]
[show_message_w]
#Aurelia
À! Anh đã tỉnh rồi à?[lr]
Tuyết đã bớt rồi nhưng bên ngoài hiện giờ rất tối và lạnh.[lr]
[random_2]
[if exp="f.r==1"]
Anh nên ở lại đây thêm nữa đi.[p][else]
Đừng lo lắng điều gì cả.[p][endif]
[black]
[hide_message_w]
[bg  time="600"  method="crossfade"  storage="H/mod/au05.jpg" ][wait time="800"]
[bg  time="1000"  method="crossfade"  storage="H/mod/au04.jpg" ][wait time="300"]
[show_message_w]
#Aurelia
Thôi nào![lr]
Anh vẫn còn lo lắng chuyện gì sao[lr]
Mọi chuyện chỉ là một giấc mơ thôi mà.[p]
Ừm...![lr]
Tôi thực sự muốn cảm ơn anh.[p]
Vừa rồi thực sự rất tuyệt... [lr]
Một giấc mơ ngọt ngào...[lr] 
Dù sao thì cũng cảm ơn anh vì điều đó. Fufu~♪[p]
#
(Tôi không hiểu chuyện gì đang diễn ra nhưng...[lr]
[bg  time="1000"  method="crossfade"  storage="bg/black.jpg" ][wait time="300"]
(Tôi cảm thấy tất cả như đang dần mờ nhạt...[p]
(Nhưng mọi cảm xúc của tôi vẫn còn rất sống động...[p]
[eval exp="f.dream='aurelia'"]
[eval exp="f.aur_hx='date'"]
[eval exp="f.aur_dream='yet'"]
[eval exp="f.aurelia_tl='non'"]
[chara_mod name="sub" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="00.png"]
[chara_mod name="x" time="0" storage="00.png"]

[jump storage="mod/dream.ks" target="*dream_aurelia_beore"]
[s]















