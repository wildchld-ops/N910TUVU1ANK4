.class Lcom/android/phone/NetworkNotificationUI$2;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1    # I

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0, p1}, Lcom/android/phone/NetworkNotificationUI;->access$3802(Lcom/android/phone/NetworkNotificationUI;I)I

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevDataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NetworkNotificationUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsWifiConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m3gwarningPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v2}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mIsWifiConnected:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1600(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$1700(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->notify3gWarning()V
    invoke-static {v0}, Lcom/android/phone/NetworkNotificationUI;->access$3900(Lcom/android/phone/NetworkNotificationUI;)V

    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/NetworkNotificationUI;->m3gwarningPopup:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$1602(Lcom/android/phone/NetworkNotificationUI;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mDataState:I
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;)I

    move-result v1

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mPrevDataState:I
    invoke-static {v0, v1}, Lcom/android/phone/NetworkNotificationUI;->access$1702(Lcom/android/phone/NetworkNotificationUI;I)I

    goto/16 :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11
    .param p1    # Landroid/telephony/ServiceState;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->VDBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$2500()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onServiceStateChanged-S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_16

    :cond_1
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_16

    const/4 v2, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v9, v9, Lcom/android/phone/NetworkNotificationUI;->newSS:Landroid/telephony/ServiceState;

    iput-object v9, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    const-string v8, "ctc_4g_single_data"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_17

    const-string v8, "NetworkNotificationUI"

    const-string v9, "It is LTE network, should stop alarm "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->stopAlarmForSearchTDLTENetwork()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2300(Lcom/android/phone/NetworkNotificationUI;)V

    :cond_2
    :goto_1
    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhone.isNetworkRoaming() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "true"

    const-string v9, "persist.sys.restrict_background"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "NetworkNotificationUI"

    const-string v9, "RestrictBackground OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v8, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "ENABLED"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    # getter for: Lcom/android/phone/NetworkNotificationUI;->SHIP_BUILD:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$2700()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_5
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v2, :cond_7

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "persist_sys_rplmn"

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "NetworkNotificationUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RPLMN :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , roaming :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$2900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isRoamingArea()Z
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "persist_sys_rplmn"

    const-string v9, "domestic"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    :goto_2
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "20"

    const-string v9, "ril.simtype"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v2, :cond_8

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.REGIST_HOME"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iput-object p1, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, v8, Lcom/android/phone/NetworkNotificationUI;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "0"

    const-string v9, "ril.IsManualSelection"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_9
    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "NetworkNotificationUI"

    const-string v9, "Reset mNoservicePopupSelectionNagativeButton for Switching to Automatic Selection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$3102(Lcom/android/phone/NetworkNotificationUI;Z)Z

    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mAirplaneMode:Z
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2100(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v8

    if-nez v8, :cond_d

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "NetworkNotificationUI"

    const-string v9, "send EVENT_MANUAL_SELECTION_NO_SVC msg"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v9, 0x61a8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_14

    const-string v8, "feature_kor_open"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3400(Lcom/android/phone/NetworkNotificationUI;)V

    :cond_e
    :goto_3
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3600(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_10

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNotifyNetworkRegisteringDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3600(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mNotifyNetworkRegisteringDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$3602(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_10
    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$3102(Lcom/android/phone/NetworkNotificationUI;Z)Z

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3300(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_13

    # getter for: Lcom/android/phone/NetworkNotificationUI;->DBG:Z
    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->access$100()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "NetworkNotificationUI"

    const-string v9, "mNoServiceAndManualSelectionDialog.dismiss"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3200(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    const/4 v9, 0x0

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/phone/NetworkNotificationUI;->access$3202(Lcom/android/phone/NetworkNotificationUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_13
    const-string v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkKTHDVoice()V

    :cond_14
    const-string v8, "missing_phone_lock"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "lock"

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "missing_phone_lock"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_15

    iget-object v9, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    const-string v10, "statusbar"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    # setter for: Lcom/android/phone/NetworkNotificationUI;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v9, v8}, Lcom/android/phone/NetworkNotificationUI;->access$3702(Lcom/android/phone/NetworkNotificationUI;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "missing_phone_lock"

    const-string v10, "unlock"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.phone.Emergencydialer.MISSING_PHONE_UNLOCK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$1100(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3700(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/StatusBarManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v8, "NetworkNotificationUI"

    const-string v9, "onServiceStateChanged : COMMAND_MISSINGPHONE_UNLOCK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    const-string v8, "NetworkNotificationUI"

    const-string v9, "It is not LTE network, start alarm "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->startAlarmForSearchTDLTENetwork()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$2600(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_1

    :cond_18
    const-string v8, "domestic"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_19
    const-string v8, "persist_sys_rplmn"

    const-string v9, "oversea"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->notifyRoaming()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3000(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_2

    :cond_1a
    const-string v8, "feature_skt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_1b
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->refleshRTSValue()Z
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget v8, v8, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1c

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget v8, v8, Lcom/android/phone/NetworkNotificationUI;->rtsStatusValue:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e

    :cond_1c
    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget v8, v8, Lcom/android/phone/NetworkNotificationUI;->rtsIdleValue:I

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget v8, v8, Lcom/android/phone/NetworkNotificationUI;->rtsCsValue:I

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    iget v8, v8, Lcom/android/phone/NetworkNotificationUI;->rtsPsValue:I

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/phone/NetworkNotificationUI$2;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->dissmissRTSPopup()V
    invoke-static {v8}, Lcom/android/phone/NetworkNotificationUI;->access$3400(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_3
.end method
