#!/bin/bash
message_text=$(date +%F_%T)+"->⚠️ 桃園市 地震強度："$1+"          預計抵達時間: "$2		#Message want to send
MODE='HTML'		#Using HTML as internet sample
l_token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  //line notify token
curl -X POST \
  -H "Content-Type" : "application/x-www-form-urlencoded" \
  -H "Authorization: Bearer $l_token" \
  -F "message=$message_text" \
  "https://notify-api.line.me/api/notify"
