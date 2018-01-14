.class public Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field public static final NOTIFICATION_ID:I = 0x21c7

.field public static final TAG:Ljava/lang/String; = "SmsBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string v3, ""

    .line 165
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.TEXT"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    :cond_0
    :goto_0
    return-object v3

    .line 170
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v7

    const/16 v8, 0x13

    if-lt v7, v8, :cond_3

    .line 172
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SmsMessage;

    .line 174
    .local v6, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_2

    .line 175
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 180
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "pdus"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 181
    .local v5, "pdus":[Ljava/lang/Object;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v4, v5, v7

    .line 182
    .local v4, "pdu":Ljava/lang/Object;
    check-cast v4, [B

    .end local v4    # "pdu":Ljava/lang/Object;
    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 183
    .restart local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 186
    .end local v5    # "pdus":[Ljava/lang/Object;
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "SmsBroadcastReceiver"

    const-string v8, "Unable to retrieve message body from SmsMessage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string v5, ""

    .line 120
    .local v5, "phone":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "com.google.android.apps.googlevoice.PHONE_NUMBER"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    :cond_0
    :goto_0
    return-object v5

    .line 126
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v7

    const/16 v8, 0x13

    if-lt v7, v8, :cond_4

    .line 128
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SmsMessage;

    .line 130
    .local v6, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_2

    .line 133
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v8

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    .line 135
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/LollipopUtil;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 137
    :cond_3
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 143
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "pdus"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 144
    .local v4, "pdus":[Ljava/lang/Object;
    array-length v8, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v3, v4, v7

    .line 145
    .local v3, "pdu":Ljava/lang/Object;
    check-cast v3, [B

    .end local v3    # "pdu":Ljava/lang/Object;
    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 146
    .restart local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 144
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 150
    .end local v4    # "pdus":[Ljava/lang/Object;
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "SmsBroadcastReceiver"

    const-string v8, "Unable to retrieve originating address from SmsMessage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isRepl(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 240
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Screen1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 243
    .local v0, "appClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 244
    .local v4, "superClass":Ljava/lang/Class;
    const-class v6, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    const/4 v5, 0x1

    .line 250
    .end local v0    # "appClass":Ljava/lang/Class;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "superClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return v5

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendingNotification "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "packageName":Ljava/lang/String;
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v3, 0x0

    .line 211
    .local v3, "newIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".Screen1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "classname":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v4, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v3    # "newIntent":Landroid/content/Intent;
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_1
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/high16 v8, 0x30000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 223
    .local v5, "nm":Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification;

    const v8, 0x1080090

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 224
    .local v6, "note":Landroid/app/Notification;
    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 225
    iget v8, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v6, Landroid/app/Notification;->defaults:I

    .line 227
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 228
    .local v0, "activity":Landroid/app/PendingIntent;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sms from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p1, v8, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 229
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->getCachedMsgCount()I

    move-result v8

    iput v8, v6, Landroid/app/Notification;->number:I

    .line 230
    const/4 v8, 0x0

    const/16 v9, 0x21c7

    invoke-virtual {v5, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 231
    const-string v8, "SmsBroadcastReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notification sent, classname: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 236
    .end local v0    # "activity":Landroid/app/PendingIntent;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v5    # "nm":Landroid/app/NotificationManager;
    .end local v6    # "note":Landroid/app/Notification;
    .restart local v3    # "newIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "newIntent":Landroid/content/Intent;
    .restart local v1    # "classname":Ljava/lang/String;
    .restart local v4    # "newIntent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "newIntent":Landroid/content/Intent;
    .restart local v3    # "newIntent":Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const-string v3, "SmsBroadcastReceiver"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "phone":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->isReceivingEnabled(Landroid/content/Context;)I

    move-result v2

    .line 82
    .local v2, "receivingEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 83
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Receiving is not enabled, ignoring message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->isRepl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 92
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, and either receivingEnabled is FOREGROUND or we are the repl."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {p1, v1, v0}, Lcom/google/appinventor/components/runtime/Texting;->handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App in Foreground, delivering message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_3
    const-string v3, "SmsBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, but receivingEnabled == 2, sending notification."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
