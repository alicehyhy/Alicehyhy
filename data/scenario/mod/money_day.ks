
*chi_phi

;--------------đơn giá 2000 đ---------
[iscript]
f.talk=Math.floor(Math.random() * 7 + 1);
[endscript]
[eval exp="f.elect=f.elect+f.talk"]
;;------------1/1000m3-------đơn giá 20k/m3------
[iscript]
f.talk=Math.floor(Math.random() * 300 + 1);
[endscript]
[eval exp="f.water=f.water+f.talk"]
;;-----------1/100 Kg-----đơn giá 25k/kg-------
[iscript]
f.talk=Math.floor(Math.random() * 20 + 1);
[endscript]
[eval exp="f.gas=f.gas+f.talk"]
[return]

*return_money
[eval exp="f.money_month=f.elect*2000+f.water*20+f.gas*250"]
[eval exp="f.elect_old=f.elect"]
[eval exp="f.water_old=f.water"]
[eval exp="f.gas_old=f.gas"]
[eval exp="f.elect=0"]
[eval exp="f.water=0"]
[eval exp="f.gas=0"]
[if exp="f.money_month<=f.zince"]
[eval exp="f.zince=f.zince-f.money_month"]
[else]
[eval exp="f.money_owe=f.money_owe+f.money_month-f.zince"]
[eval exp="f.zince=0"]
[endif]
[return]

*money_owe
[if exp="f.money_owe>=f.zince"][else]
[eval exp="f.zince=f.zince-f.money_owe"]
[eval exp="f.money_owe=0"]
[endif]
[return]













