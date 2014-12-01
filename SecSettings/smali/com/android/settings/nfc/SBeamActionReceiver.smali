.class public Lcom/android/settings/nfc/SBeamActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamActionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    const-string v5, "SBeamStateReceiver"

    const-string v6, "intent is null!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "turn_on"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamActionReceiver : Quick btn ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_a

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v1

    const-string v5, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamActionReceiver : AllowCondition ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v10, v1, :cond_4

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p1, v8, v9, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    :cond_4
    if-ne v11, v1, :cond_3

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showAirplaneMode(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v5, "[SBeam]"

    const-string v6, "SBeamActionReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v8, v9, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    :cond_6
    invoke-static {v3, p1}, Lcom/android/settings/nfc/SBeamEnabler;->showTurnOnToast(Landroid/nfc/NfcAdapter;Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v4

    if-ne v4, v11, :cond_7

    if-eq v4, v10, :cond_8

    :cond_7
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_8
    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :cond_9
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_a
    invoke-static {p1, v2, v9, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0
.end method
