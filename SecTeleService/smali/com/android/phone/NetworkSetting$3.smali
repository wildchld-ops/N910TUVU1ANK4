.class Lcom/android/phone/NetworkSetting$3;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/16 v8, 0x190

    const/16 v7, 0x12c

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler msg.what"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v2, "phone"

    const-string v3, "EVENT_PLMN_REFRESH."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "phone"

    const-string v3, "[NetworkSetting] ATT, Dismiss the Dialog after update of PLMN"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updatePLMNmode()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "phone"

    const-string v3, "Search completed."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    # getter for: Lcom/android/phone/NetworkSetting;->mInitialValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "0"

    # invokes: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    const-string v2, "phone"

    const-string v3, "EVENT_NETWORK_SCAN_COMPLETED, Set Automatic"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBootUpExtra"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mBootUpExtra:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1002(Lcom/android/phone/NetworkSetting;Z)Z

    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    # invokes: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_NETWORK_SELECTION_DONE hideProgressPanel"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "1"

    # invokes: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "manual network selection: failed!"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->handleManualFailCase()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1502(Lcom/android/phone/NetworkSetting;Z)Z

    const-string v2, "phone"

    const-string v3, "[NetworkSelection] Manual selection Failed."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    # invokes: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "manual network selection: succeeded!"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    const-string v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->handleManualSuccessCase()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$1600(Lcom/android/phone/NetworkSetting;)V

    goto :goto_1

    :cond_8
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->ManualSelectionFail:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1502(Lcom/android/phone/NetworkSetting;Z)Z

    :cond_9
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_1

    :sswitch_4
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "0"

    # invokes: Lcom/android/phone/NetworkSetting;->setMode(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    :cond_a
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1800(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1802(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    # invokes: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_e

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_AUTO_SELECT_DONE hideProgressPanel"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v7}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    :cond_c
    :goto_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "automatic network selection: failed!"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->checkForbiddenNetwork:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1902(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsDisconnectingData:Z
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v3

    # invokes: Lcom/android/phone/NetworkSetting;->enableMobileData(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_0

    :cond_e
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_c

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "EVENT_AUTO_SELECT_DONE_AFTER_FAIL hideProgressPanel"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v8}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    goto :goto_2

    :cond_f
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "automatic network selection: succeeded!"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_10

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    :cond_10
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_d

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1700(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->loadNetworksList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mManualModeSuccess:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2102(Lcom/android/phone/NetworkSetting;Z)Z

    :cond_11
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "VAU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectListPopUp()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->goBackToPreviousManualNetwork()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2600(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_13

    # getter for: Lcom/android/phone/NetworkSetting;->Operator_Numeric:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NetworkSetting;->access$2700()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mSetAuto:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$1802(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic(I)V
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2200(Lcom/android/phone/NetworkSetting;I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iput-boolean v5, v2, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x2bc

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "network_selection_delay"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "mHandler - SELECT_MANUAL_TIMEOUT"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "mHandler - updateDataState()"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHandler - ActionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$2900(Lcom/android/phone/NetworkSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$2800(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3000(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->updateDataState()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2902(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_15
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2900(Lcom/android/phone/NetworkSetting;)I

    move-result v2

    const/16 v3, -0x2713

    if-ne v2, v3, :cond_0

    const-string v2, "VAU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mFromDisconnectSelectListDialog:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectListPopUp()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)V

    :goto_4
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->ActionType:I
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$2902(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->selectList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;)V

    goto :goto_4

    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mBootUpAutoSearh:Z
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$3102(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v3, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    # invokes: Lcom/android/phone/NetworkSetting;->checkDataConnection(Lcom/android/phone/NetworkSetting$userSelectionType;)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->access$3200(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mBootUpAutoSearh:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$3102(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "remove femto cell search dialog"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mSearchFemto:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mDefaultSetup:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v3, v3, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v2, v2, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->clearList()V
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3400(Lcom/android/phone/NetworkSetting;)V

    :cond_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto cell conncet fail"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f09048b

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z
    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->access$3500(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto search done, enable data"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # invokes: Lcom/android/phone/NetworkSetting;->setMobileDataEnabled(Z)V
    invoke-static {v2, v5}, Lcom/android/phone/NetworkSetting;->access$3600(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mIsDataDisconnectingFemto:Z
    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->access$3502(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    :cond_18
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v3, "femto cell conncet success"

    # invokes: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v5}, Lcom/android/phone/NetworkSetting;->access$000(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f09048c

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_d
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_7
        0xbb9 -> :sswitch_b
    .end sparse-switch
.end method
