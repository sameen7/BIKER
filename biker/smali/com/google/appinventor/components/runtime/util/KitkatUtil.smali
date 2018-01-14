.class public final Lcom/google/appinventor/components/runtime/util/KitkatUtil;
.super Ljava/lang/Object;
.source "KitkatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 37
    .local v0, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ltz v2, :cond_0

    .line 38
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-object v1
.end method
