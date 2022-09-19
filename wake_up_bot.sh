#!/bin/bash
TOKEN=xxxxxxxxx	#TG机器人token
chat_ID=xxxxxxx		#用户ID或频道、群ID
message_text="地震強度："$1+"          預計抵達時間: "$2		#要发送的信息
MODE='HTML'		#解析模式，可选HTML或Markdown
URL="https://api.telegram.org/bot${TOKEN}/sendMessage"		#api接口
#测试1：终端有日志
curl -s -X POST $URL -d chat_id=${chat_ID}  -d parse_mode=${MODE} -d text="${message_text}" 