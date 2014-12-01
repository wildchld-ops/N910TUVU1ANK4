.class public Lcom/android/settings/nfc/SBeamStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SBeamStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v5, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "SBeamStateReceiver"

    const-string v5, "intent is null!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "android.nfc.extra.ABEAM_STATE"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBeamStateReceiver : abeam > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1, v7, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v7}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v8, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    :cond_6
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v7, v2, :cond_8

    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->isPowerOff()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : Ignore NFC off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-static {p1, v8, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0

    :cond_8
    const/4 v4, 0x3

    if-ne v4, v2, :cond_c

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1, v8, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : restore status because of NFC"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v7, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, v7}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x5

    if-ne v4, v2, :cond_1

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : R/W P2P turn off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v8, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "com.felicanetworks.nfc.extra.ADAPTER_RW_P2P_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_f

    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->isPowerOff()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : Ignore NFC off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    invoke-static {p1, v8, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0xd

    if-ne v4, v2, :cond_1

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {p1, v8, v7, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_10
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : can\'t load nfcadpater(nfcAdapter is null)"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : restore status because of NFC"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v7, v8, v7}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto/16 :goto_0

    :cond_12
    invoke-static {p1, v7}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "com.android.nfc.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "[SBeam]"

    const-string v5, "SBeamStateReceiver : apply eas policy"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v8, v7, v8}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
