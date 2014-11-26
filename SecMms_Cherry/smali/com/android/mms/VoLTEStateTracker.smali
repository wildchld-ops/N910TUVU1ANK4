.class public Lcom/android/mms/VoLTEStateTracker;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"


# static fields
.field private static final ACTION_VOLTE_STATE:Ljava/lang/String; = "com.samsung.volte.state"

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static final PROPERTY_IMS_VOLTE_SUPPORTED:Ljava/lang/String; = "persist.sys.ims.volte_supported"

.field private static final TAG:Ljava/lang/String; = "VolteStateTracker"

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVoLteEnabled(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
    .param p2    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "VoLTE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "VolteStateTracker"

    const-string v3, "isVoLteEnabled : intent > extra is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVolteEnabled(Landroid/content/Context;)Z
    .locals 12
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "VolteStateTracker"

    const-string v10, "isVolteEnabled api called"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    iget-object v9, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    move v3, v7

    :goto_0
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isLTEConnected - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    :goto_1
    return v8

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    const-string v9, "VolteStateTracker"

    const-string v10, "in IMS_SUPPORT_COMMON_INTERFACE volte checking method"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v0

    and-int/lit8 v9, v0, 0x1

    if-ne v9, v7, :cond_5

    move v2, v7

    :goto_2
    if-eqz v2, :cond_3

    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    const-string v9, "VolteStateTracker"

    const-string v10, "Volte is Enabled"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is Ims registered = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVolteSupported = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "VolteStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Voice Call Setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnable3GHDVoice()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    :cond_4
    invoke-static {v8}, Lcom/android/mms/util/TelephonyUtils;->isNetworkAvailable(Z)Z

    move-result v8

    goto/16 :goto_1

    :cond_5
    move v2, v8

    goto :goto_2

    :cond_6
    const-string v9, "VolteStateTracker"

    const-string v10, "imsInterface is null"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    if-eqz v3, :cond_8

    const-string v8, "VolteStateTracker"

    const-string v9, "Volte is Enabled "

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto/16 :goto_1

    :cond_8
    const-string v7, "VolteStateTracker"

    const-string v9, "Volte is Disabled"

    invoke-static {v7, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/BroadcastReceiver;

    const-string v1, "VolteStateTracker"

    const-string v2, "startTracking"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.volte.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopTracking()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VolteStateTracker"

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/mms/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/mms/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
