#!/bin/bash
TOKEN=xxxxxxxxx	#TG bottoken
chat_ID=xxxxxxx		#用户ID
message_text=$(date +%F_%T)+"->地震強度："$1+"          預計抵達時間: "$2		#Message want to send
MODE='HTML'		#Using HTML as internet sample
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"		#api
curl -s -X POST $URL -d chat_id=${chat_ID}  -d parse_mode=${MODE} -d text="${message_text}" 
