.class Lcom/android/phone/BluetoothPhoneService$3;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerCall()Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getDeviceId() - mCM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getDeviceId() - mCM.getDefaultPhone() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/phone/BluetoothPhoneService;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT1 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v2, v0

    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/phone/BluetoothPhoneService;->DBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMSLOT2 operatorName:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "BluetoothPhoneService"

    const-string v4, "getNetworkOperator() - mCM is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "BluetoothPhoneService"

    const-string v4, "getNetworkOperator() - mCM.getDefaultPhone() is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "BluetoothPhoneService"

    const-string v4, "getNetworkOperator() - mCM.getDefaultPhone().getServiceState() is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getSubscriberId() - mCM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getSubscriberId() - mCM.getDefaultPhone() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getSubscriberNumber() - mCM is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "BluetoothPhoneService"

    const-string v3, "getSubscriberNumber() - mCM.getDefaultPhone() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public hangupCall()Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listCurrentCalls()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized processChld(I)Z
    .locals 12
    .param p1    # I

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v10, "android.permission.MODIFY_PHONE_STATE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->getCurrentCallPhoneType()I
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1400(Lcom/android/phone/BluetoothPhoneService;)I

    move-result v5

    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHLD Value is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    if-le p1, v9, :cond_1

    const/16 v9, 0xa

    if-ge p1, v9, :cond_0

    const-string v9, "BluetoothPhoneService"

    const-string v10, "Invlaid CHLD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :goto_0
    monitor-exit p0

    return v9

    :cond_0
    :try_start_1
    rem-int/lit8 v2, p1, 0xa

    div-int/lit8 p1, p1, 0xa

    const/4 v9, 0x2

    if-ne v5, v9, :cond_3

    const-string v9, "BluetoothPhoneService"

    const-string v10, "CDMA Network can\'t control ECC"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_2

    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chld=2; CONF -> THRWAY ; when 2nd call is incomming; app.cdmaPhoneCallState.IsThreeWayCallOrigStateDialing() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v3

    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isGeneric = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/android/phone/BluetoothPhoneService$3;->processChldIdx(II)Z

    move-result v6

    move v9, v6

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x1

    if-ne p1, v9, :cond_10

    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_7

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "CHLD:1 Callwaiting Answer call"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_6
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "CHLD:1 Hangup Call"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_9
    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    const/4 v9, 0x5

    if-ne v5, v9, :cond_f

    :cond_a
    :try_start_2
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto/16 :goto_0

    :cond_b
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    goto/16 :goto_0

    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v9, 0x2

    if-ne p1, v9, :cond_20

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1b

    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_12

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "CHLD:2 Callwaiting Answer call"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_11
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_1a

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_1a

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "CHLD:2 Swap Calls; is Generic"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_13
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_14
    const-string v9, "BluetoothPhoneService"

    const-string v10, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-eqz v9, :cond_17

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "CHLD:2 Callwaiting Answer call"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_16
    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSetSecondCallState(Z)V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    sget-object v10, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v9, v10, :cond_1a

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v9, :cond_1a

    iget-object v9, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-nez v9, :cond_1a

    if-eqz v3, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/BluetoothPhoneService$3;->cdmaSwapSecondCallState()V

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_18

    const-string v9, "CHLD:2 Swap Calls; is Generic"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_18
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_19
    const-string v9, "BluetoothPhoneService"

    const-string v10, "CHLD:2 Swap Calls is not Generic"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1a
    const-string v9, "BluetoothPhoneService"

    const-string v10, "CDMA fail to do hold active and accept held"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v9, 0x1

    if-eq v5, v9, :cond_1c

    const/4 v9, 0x5

    if-ne v5, v9, :cond_1f

    :cond_1c
    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v9

    if-nez v9, :cond_1e

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "CHLD:2 do not work - don\'t support change to hold call if has only foregroundCall"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1e
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_1f
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_20
    const/4 v9, 0x3

    if-ne p1, v9, :cond_29

    const/4 v9, 0x2

    if-ne v5, v9, :cond_25

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_23

    if-eqz v3, :cond_21

    const-string v9, "BluetoothPhoneService"

    const-string v10, "CHLD:3 Merge Calls is Generic"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_21
    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v9

    if-eqz v9, :cond_22

    const-string v9, "CHLD:3 Merge Calls is not Generic"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_22
    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_23
    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_24

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_24
    const-string v9, "BluetoothPhoneService"

    const-string v10, "GSG no call to add conference"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_25
    const/4 v9, 0x1

    if-eq v5, v9, :cond_26

    const/4 v9, 0x5

    if-ne v5, v9, :cond_28

    :cond_26
    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_27

    iget-object v9, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v9}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {}, Lcom/android/phone/PhoneUtils;->mergeCalls()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_27
    const-string v9, "BluetoothPhoneService"

    const-string v10, "GSG no call to merge"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_28
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected phone type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_29
    const-string v9, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad CHLD value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized processChldIdx(II)Z
    .locals 18
    .param p1    # I
    .param p2    # I

    monitor-enter p0

    :try_start_0
    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Process CHLD Idx, Chld :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " idx :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v16, "android.permission.MODIFY_PHONE_STATE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x6

    new-array v4, v15, [Lcom/android/internal/telephony/Connection;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 v15, 0x6

    new-array v5, v15, [Z

    const/4 v9, 0x0

    :goto_0
    const/4 v15, 0x6

    if-ge v9, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mClccUsed:[Z
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1500(Lcom/android/phone/BluetoothPhoneService;)[Z

    move-result-object v15

    aget-boolean v15, v15, v9

    aput-boolean v15, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v13

    const/4 v9, 0x0

    :goto_2
    const/4 v15, 0x6

    if-ge v9, v15, :cond_4

    aget-boolean v15, v5, v9

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mClccTimestamps:[J
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1600(Lcom/android/phone/BluetoothPhoneService;)[J

    move-result-object v15

    aget-wide v15, v15, v9

    cmp-long v15, v13, v15

    if-nez v15, :cond_5

    add-int/lit8 v6, v6, 0x1

    aput-object v3, v4, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :try_start_1
    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connection Index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    if-le v0, v6, :cond_7

    const-string v15, "BluetoothPhoneService"

    const-string v16, "Wrong idx value"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x0

    :goto_3
    monitor-exit p0

    return v15

    :cond_7
    add-int/lit8 v15, p2, -0x1

    :try_start_2
    aget-object v15, v4, v15

    if-nez v15, :cond_8

    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Connection object is null for idx "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_3

    :cond_8
    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Number of Connections : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_9

    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Trying to hangup "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, p2, -0x1

    aget-object v17, v4, v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, p2, -0x1

    aget-object v15, v4, v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    const/4 v15, 0x2

    move/from16 v0, p1

    if-ne v0, v15, :cond_d

    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Hold all Calls except, idx : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, p2, -0x1

    aget-object v15, v4, v15

    invoke-virtual {v12, v15}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v15

    if-nez v15, :cond_a

    add-int/lit8 v15, p2, -0x1

    aget-object v15, v4, v15

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    const-string v15, "BluetoothPhoneService"

    const-string v16, "Idx call is waiting or held call object"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConferenceCall()Z

    move-result v15

    if-eqz v15, :cond_d

    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "background calls len "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_c

    const-string v15, "BluetoothPhoneService"

    const-string v16, "Merging calls"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, p2, -0x1

    aget-object v15, v4, v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x9

    add-int/lit8 v17, p2, -0x1

    aget-object v17, v4, v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Separate the Call : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, p2, -0x1

    aget-object v17, v4, v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " after one second"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v15, v11, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_c
    const-string v15, "BluetoothPhoneService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " Separate the Call : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v17, p2, -0x1

    aget-object v17, v4, v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v15, p2, -0x1

    aget-object v15, v4, v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method public queryCallState()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public queryPhoneState()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1700(Lcom/android/phone/BluetoothPhoneService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public sendDtmf(I)Z
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1300(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->getCurrentCallPhoneType()I
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1400(Lcom/android/phone/BluetoothPhoneService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # getter for: Lcom/android/phone/BluetoothPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothPhoneService;->access$1200(Lcom/android/phone/BluetoothPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->sendDtmf(C)Z

    move-result v0

    goto :goto_0
.end method

.method public updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/phone/BluetoothPhoneService;->VDBG:Z
    invoke-static {}, Lcom/android/phone/BluetoothPhoneService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$3;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothPhoneService;->access$1900(Lcom/android/phone/BluetoothPhoneService;)V

    return-void
.end method
