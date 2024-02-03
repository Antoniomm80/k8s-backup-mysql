#/bin/sh
if [ "$NOTIFICATION_PROVIDER" = "Telegram" ]
    then
        curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_BOT_API_KEY/sendMessage" \
             -d "chat_id=$TELEGRAM_CHAT_ID" \
         -d "text=$1"
    fi
#curl -X POST -d "message=$1" $NOTIFICATION_WEBHOOK_URL
