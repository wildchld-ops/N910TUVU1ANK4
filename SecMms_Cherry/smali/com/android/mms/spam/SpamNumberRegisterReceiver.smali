.class public Lcom/android/mms/spam/SpamNumberRegisterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SpamNumberRegisterReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SpamNumberRegisterReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "Mms/SpamNumberRegisterReceiver"

    const-string v8, "onReceive() - mSpamNumberRegisterReceiver"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const/4 v6, 0x0

    const-string v5, ""

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_3

    const-string v7, "filter_type"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "filter"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "enable"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v7, "filter_type"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_3
    const-string v7, "com.android.mms.intent.action.SPAM_FILTER_INSERT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, v6, v5, v1, v2}, Lcom/android/mms/spam/SpamFilter;->insert(Landroid/content/Context;ILjava/lang/String;ZI)Landroid/net/Uri;

    goto :goto_0

    :cond_4
    const-string v7, "com.android.mms.intent.action.SPAM_FILTER_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p1, v1, v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->updateSpamNumber(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v7, "com.android.mms.intent.action.SPAM_FILTER_DELETE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1, v6, v5}, Lcom/android/mms/spam/SpamFilter;->delete(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0
.end method
