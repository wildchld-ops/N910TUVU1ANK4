.class Lcom/android/phone/NetworkNotificationUI$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIntentReceiver onReceive intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_RIL_PromptToDataRoam"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "NetworkNotificationUI"

    const-string v8, "android.intent.action.ACTION_DATA_SELECTION_POPUP"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhone.isNetworkRoaming() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v5, "LGT"

    const-string v8, "TMO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$300(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-ne v5, v6, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v7, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    :cond_5
    :goto_1
    const-string v5, "feature_kor"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "userdebug"

    const-string v8, "ro.build.type"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "com.android.action.LTE_THROUGHPUT_RESULT"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "result"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentThroughPut_Result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->saveLteThroughtputResult(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/phone/NetworkNotificationUI;->access$2200(Lcom/android/phone/NetworkNotificationUI;Ljava/lang/String;)V

    :cond_7
    const-string v5, "ctc_4g_single_data"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "com.android.phone.search-tdlte"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->stopAlarmForSearchTDLTENetwork()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)V

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enable_4g_single_data"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1d

    move v2, v6

    :goto_2
    const-string v5, "NetworkNotificationUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received LTE search alarm event, mLteEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ctc_not_support_svlte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showLteSearchAlertPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z
    invoke-static {v5, v6}, Lcom/android/phone/NetworkNotificationUI;->access$602(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$800(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionEnableSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v6, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z
    invoke-static {v5, v6}, Lcom/android/phone/NetworkNotificationUI;->access$602(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v8

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v5, v8}, Lcom/android/phone/NetworkNotificationUI;->access$1002(Lcom/android/phone/NetworkNotificationUI;Landroid/net/NetworkPolicyManager;)Landroid/net/NetworkPolicyManager;

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1000(Lcom/android/phone/NetworkNotificationUI;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v5

    if-eqz v5, :cond_c

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "NetworkNotificationUI"

    const-string v8, "RestrictBackground OFF"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v5, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ENABLED"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "data_roaming"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mCheckingDataSelectPopup:Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v6, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_e
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v7, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_RIL_EnableNotiForDataRoaming"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone2:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1300(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_10
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_12
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$400(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v7, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_13
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$800(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_14
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionPopupIsSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$700(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->getDataSelectionEnableSet()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v6, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_15
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showRoamingDataSelectionPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1200(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_16
    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V
    invoke-static {v5, v7, v7}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;ZZ)V

    goto/16 :goto_1

    :cond_17
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->updateConnectivity(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/phone/NetworkNotificationUI;->access$1400(Lcom/android/phone/NetworkNotificationUI;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_18
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v6

    :goto_3
    # setter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v8, v5}, Lcom/android/phone/NetworkNotificationUI;->access$1502(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v5, v6}, Lcom/android/phone/NetworkNotificationUI;->access$1602(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v5, v7}, Lcom/android/phone/NetworkNotificationUI;->access$1702(Lcom/android/phone/NetworkNotificationUI;I)I

    goto/16 :goto_1

    :cond_19
    move v5, v7

    goto :goto_3

    :cond_1a
    const-string v5, "android.intent.action.MANUAL_SET_TIME"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isRtsPopupAllowed()Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$1800(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_5

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAutoTimesetDialog:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$1900()Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showAutoTimeSetDialog()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$2000(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_1b
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const-string v8, "state"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v5, v8}, Lcom/android/phone/NetworkNotificationUI;->access$2102(Lcom/android/phone/NetworkNotificationUI;Z)Z

    const-string v5, "NetworkNotificationUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_1

    :cond_1c
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_1

    :cond_1d
    move v2, v7

    goto/16 :goto_2

    :cond_1e
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/phone/NetworkNotificationUI$1;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showLteSearchAlertPopUp()V
    invoke-static {v5}, Lcom/android/phone/NetworkNotificationUI;->access$2400(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0
.end method
