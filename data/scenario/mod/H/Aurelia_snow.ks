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
(Sau một hồi lang thang trên con phố lạnh lẽo đang tràn ngập tuyết phủ.[r] 
Bỗng tôi thấy có một có một vài tia sáng le lói từ cửa hàng quen thuộc.[p]
[else]
(Sau một hồi lang thang trên đường phố lạnh lẽo dưới trời tuyết.[r] 
Bỗng tôi thấy có một có một cửa hàng quen thuộc vẫn còn sáng đèn.[p][endif]
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
[bg  time="100"  method="crossfade"  storage="bg/shop_night.jpg" ]
[chara_mod name="sub" time="1" storage="o/sub/Aurelia_b.png" ]
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
[chara_mod name="sub" time="700" storage="00.png" wait="true" ]
[_](Cô chủ cửa hàng đi vào phòng lấy cho tôi một tách trà.[lr]
Tự nhiên hôm nay tôi thấy cô ấy bình thường một cách kì lạ.[p]
[chara_mod name="sub" time="700" storage="o/sub/Aurelia_b.png" wait="true"]
#Aurelia
Của quý khách đây! uống một chút cho ấm người đi nào.[p]
#
(.[wait time="300"].[wait time="300"].[wait time="300"].[cm]
#Aurelia
[random_2][if exp="f.r==1"]
Tôi cảm thấy ngày hôm nay trôi qua thật buồn tẻ.[lr]
Chắc anh cũng biết tôi là người rất khó để có thể buồn được.[p][else]
Thời tiết thế này thật tệ. Nó khiến tôi cảm thấy hôm nay quả là một ngày buồn tẻ.[p][endif]
[if exp="f.au_dream=='non'"]
[eval exp="f.au_dream='yet'"]
[eval exp="f.dream='aureliaf'"]
#
(Có vẻ như tôi đã làm phiền cô ấy.[p]
[jump target="*to_next_1_"][endif]
#
[button target="*to_next_1" graphic="ch/au_1_ask.png" x="0" y="300" ]
[button target="*to_next_1_" graphic="ch/au_1_ask_.png" x="0" y="450" ][s]

*to_next_1_
[cm]
#Aurelia
[eval exp="f.dream='aureliaf'"]
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
#Aurelia
Anh thắc mắc tại sao tôi lại sống một mình ở đây ư?[lr]
[random_2][if exp="f.r==1"]
Fu~fu~♪! Thật là một câu hỏi tinh tế vào giờ này đó, ngài bác sỹ.[p][else]
Fu~fu~♪! Thật là một câu hỏi khiến phụ nữ bối rối đó, ngài bác sỹ.[p][endif]
Tôi cũng không nhớ vì lý do gì nữa.[lr]
[random_2][if exp="f.r==1"]
Chắc hẳn nó là một câu chuyện dài và không mấy tốt đẹp gì.[p][else]
Chắc hẳn đó là một câu chuyện dài và không mấy ấn tượng đâu.[p][endif]
[random_2][if exp="f.r==1"]
Chẳng phải hôm nay đã có anh đang ở đây rồi sao. Fu~fu~♪![p][else]
Chẳng phải anh đã ở đây với tôi hôm nay rồi sao. Fu~fu~♪![p][endif]
Có thể anh chưa biết nhưng.[wait time="300"].[wait time="300"].[r] 
ở cái thị trấn nhỏ bé này, vị bác sỹ đáng kính như anh luôn được chào đón,[r]
luôn có được cảm tình của mọi người đó...♪♪♪[p]
#
[random_2][if exp="f.r==1"]
(Thật kì lạ, tôi khá ngạc nhiên trước sự bình thường của cô ấy ngày hôm nay.[lr] Cũng không biết có phải do tách trà hay sao mà tôi có thể cảm nhận được sự ấm áp[r] 
thoảng qua từ người phụ nữ này.[p][else]
(Thật kì lạ, tôi khá ngạc nhiên trước sự bình thường của cô ấy ngày hôm nay.[lr] Cũng không biết có phải do thời tiết hay sao mà tôi có thể cảm nhận được sự ấm áp[r] 
và ngọt ngào từ người phụ nữ này.[p][endif]

#Aurelia
Tôi nhớ không nhầm thì trước đây chẳng phải anh cũng sống một mình đó sao. [p]
Đã bao giờ cảm thấy cô đơn và trống trải chưa?[p]
#
(.[wait time="300"].[wait time="300"].[wait time="300"][cm]
#Aurelia
Coi nào, xem chừng tuyết đang rơi ngày một lớn rồi kìa.[lr]
Có vẻ như các con đường bây giờ không thể bước đi nổi nữa đâu.[p]
Nếu không ngại anh cũng có thể ở lại đây thêm một lúc đó.[lr] 
Sẽ thật tệ nếu vị bác sỹ duy nhất của thị trấn này bị cảm lạnh đó fu fu~♪[p]
#
(Chúng tôi cùng tám chuyện khá lâu, những câu hỏi về cuộc sống, về cảm xúc cá[r] 
nhân dường như đang kéo chúng tôi lại gần nhau hơn và...[p]
#Aurelia
Ồ! Có thể anh không biết nhưng mỗi khi đêm xuống, và nhất là trong thời tiết thế[r]
này thì tâm trạng của phụ nữ sẽ trở nên rất mong manh đó. Fufu~♪[p][stopbgm]
[chara_mod name="sub" time="700" storage="o/sub/Aurelia_b_hug.png" ][wait time="300"]
[playbgm  loop="true"  storage="Magenta_Touch.ogg" ]
#
(Không hiểu sao, tự nhiên tôi tiến lại gần cô ấy.[lr] 
Cô ấy không hề có phản ứng nào đặc biệt ngoài ánh mắt đang nhìn tôi với một sự[r]
mê hoặc.[p]
(Cô ấy thật quyến rũ - trong đầu tôi luôn xuất hiện câu nói đó.[p]
#Aurelia
.[wait time="300"].[wait time="300"].[cm]
Không sao đâu mà... fufu~♪[p]
[black]
[chara_mod name="sub" time="700" storage="00.png" ]
#
Tôi tiến lại gần cô ấy, bỗng nhiên mọi thứ xung quanh tôi đều trở nên trống rỗng.[p] 
Không còn âm thanh từ những cơn gió tuyết lạnh lẽo ngoài kia,[r] 
chỉ nghe thấy tiếng tim đập liên hồi của tôi và hơi thở ấm áp của cô ấy...[p]
Tất cả cái lạnh mà tôi cảm nhận được trong cơn bão tuyết lúc trước đều biến mất,[r] 
chỉ còn cảm thấy sự ấm áp và nóng bỏng của da thịt tiếp xúc với nhau...[p]
#Aurelia
Ah~♪![lr]
Đừng quá căng thẳng như vậy chứ. Mọi chuyện đều rất ổn mà...Fufu~♪[p]
#
(.[wait time="300"].[wait time="300"].[wait time="300"][cm]
[hide_message_w]
;[chara_mod name="sub" time="1" storage="mod/cen1.png" ]
;[chara_show name="sub" time="1"  ]
[bg  time="900"  method="crossfade"  storage="H/mod/au00_1.jpg" ][wait time="800"][show_message_w]
(...Tôi từ từ khám phá cơ thể nóng bỏng của cô ấy.[lr]
Cơ thể ngọt ngào và ấm áp của cô ấy xâm chiếm mọi ngóc ngách trong tâm trí tôi,[r] 
khiến tôi như muốn tan chảy.[p]
(Cảm xúc của tôi như dâng trào đến đỉnh điểm khi chạm vào cơ thể mềm mại và mùi[r]
hương quyến rũ này.[p]
(Sự nóng bỏng dâng trào này dường như đủ để làm tan chảy hết số tuyết ngoài kia.[lr]
Có lẽ do một phản ứng khi cơ thể trong một môi trường lạnh lẽo, cơ thể chúng tôi[r] như muốn quấn chặt lấy nhau.[p]
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
[bg  time="1000"  method="crossfade"  storage="bg/black.jpg" ]
(.[wait time="300"][chara_mod name="x" time="1" storage="00.png" ]
.[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"][cm]
[hide_message_w][stopbgm]
[bg  time="900"  method="crossfade"  storage="H/mod/au02.jpg" ][wait time="700"]
[bg  time="1000"  method="crossfade"  storage="H/mod/au01.jpg" ][wait time="300"]
[playbgm  loop="true"  storage="Rusty_Gainsboro.ogg" ]
[show_message_w]
#Aurelia
À! Anh đã tỉnh rồi à?[lr]
Tuyết đã bớt rồi nhưng bên ngoài hiện giờ rất tối và lạnh.[lr]
[random_2]
[if exp="f.r==1"]
Anh có thể ở lại đây tới sáng cũng được.[p][else]
Anh nên ở lại đây tới sáng mai hãy về.[p][endif]
[black]
[hide_message_w]
[bg  time="600"  method="crossfade"  storage="H/mod/au05.jpg" ][wait time="800"]
[bg  time="1000"  method="crossfade"  storage="H/mod/au04.jpg" ][wait time="300"]
[show_message_w]
#Aurelia
Thôi nào![lr]
Đừng lo lắng gì về tôi[lr]
Tôi không thấy phiền hay gì đâu.[p]
Ừm...![lr]
Tôi thực sự phải cảm ơn anh đó.[p]
Vừa rồi thực sự rất tuyệt...[lr]
Tôi cảm thấy thực sự tốt hơn nhiều rồi đó.[lr] 
Dù sao thì cũng cảm ơn anh vì đã chiếu cố. Fufu~♪[p]
#
(Mọi thứ về cô ấy bỗng nhiên thật mơ hồ...[lr]
[bg  time="1000"  method="crossfade"  storage="bg/black.jpg" ][wait time="300"]
(Tôi cảm thấy tất cả như đang dần mờ nhạt...[p]
(Không suy nghĩ gì thêm nữa. tôi ngả người xuống và chợp mắt một chút...[p]
[eval exp="f.dream='aurelia'"]
[eval exp="f.aur_hx='date'"]
[eval exp="f.aur_dream='yet'"]
[eval exp="f.aurelia_tl='non'"]
[chara_mod name="sub" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="00.png"]
[chara_mod name="x" time="0" storage="00.png"]
[jump storage="mod/dream.ks" target="*dream_aurelia_beore"]
[s]















