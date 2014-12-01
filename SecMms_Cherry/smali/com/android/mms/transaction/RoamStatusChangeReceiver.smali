.class public Lcom/android/mms/transaction/RoamStatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RoamStatusChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RoamStatusChangeReceiver"

.field private static mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerForRoamingStatusChanges(Landroid/content/Context;)V
    .locals 3

    const-string v1, "Mms/RoamStatusChangeReceiver"

    const-string v2, "registerForRoamingStatusChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->unRegisterForRoamingStatusChanges(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    invoke-direct {v1}, Lcom/android/mms/transaction/RoamStatusChangeReceiver;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    :cond_0
    sget-object v1, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static unRegisterForRoamingStatusChanges(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/RoamStatusChangeReceiver"

    const-string v1, "unRegisterForRoamingStatusChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/RoamStatusChangeReceiver;->mRoamStatusChangeReceiver:Lcom/android/mms/transaction/RoamStatusChangeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Mms/RoamStatusChangeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "home"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "domesticRoam"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "content://sms/queued"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "roam_pending"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ROAM_STATUS_CHANGE_RECEIVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
