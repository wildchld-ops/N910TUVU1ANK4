.class Lcom/android/phone/TPhoneService$3;
.super Landroid/os/Handler;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1    # Landroid/os/Message;

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "TPhoneService"

    const-string v8, "Handler: ignoring message - OEM mode"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKidsMode()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "TPhoneService"

    const-string v8, "Handler: ignoring message - Kids mode"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "TPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHandler : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Lcom/android/phone/TPhoneUtils;->mHandlerToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->sendPhoneState()V
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fgCallState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V
    invoke-static {v7, v8, v10}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mPrevFgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$800(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    const-string v8, "Dialing..."

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/phone/PhoneGlobals;->displayTPhone(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # setter for: Lcom/android/phone/TPhoneService;->mPrevFgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-static {v7, v2}, Lcom/android/phone/TPhoneService;->access$802(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;

    goto/16 :goto_0

    :sswitch_1
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # setter for: Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;
    invoke-static {v7, v12}, Lcom/android/phone/TPhoneService;->access$1002(Lcom/android/phone/TPhoneService;Lcom/skt/prod/phone/TCall;)Lcom/skt/prod/phone/TCall;

    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/TPhoneService;->sendNewIncomingCall(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1100(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/TPhoneService;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1200(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/TPhoneService;->sendDisconnectCall(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1300(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->sendPhoneState()V
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$600(Lcom/android/phone/TPhoneService;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    # invokes: Lcom/android/phone/TPhoneService;->sendPostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v8, v7, v9}, Lcom/android/phone/TPhoneService;->access$1400(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/TPhoneService;->sendSuppServiceFailed(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1500(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Connection;

    # invokes: Lcom/android/phone/TPhoneService;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1600(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Connection;)V

    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/Connection;

    # setter for: Lcom/android/phone/TPhoneService;->mRequestConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1702(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v7, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    :try_start_0
    iget-object v7, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    check-cast v7, [I

    const/4 v8, 0x2

    aget v6, v7, v8

    const/16 v7, 0x456

    if-ne v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    const-string v8, "Modify call request rejected by mt"

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    :goto_1
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v8, 0x2

    # invokes: Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V
    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->access$1800(Lcom/android/phone/TPhoneService;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v7, "TPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modify call request exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v7, "TPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modify call request fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v7, "TPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modify call request exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v7, "TPhoneService"

    const-string v8, "Modify call request to RIL returned without exception"

    invoke-static {v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v7}, Lcom/android/phone/CallNotifier;->saveSwitchedLog()V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    const-string v8, "Modify call request to CALL_TYPE_VOICE"

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$900(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/phone/PhoneGlobals;->displayTPhone(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x3

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    const-string v8, "Modify call request to CALL_TYPE_VT"

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/TPhoneService;->access$500(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V
    invoke-static {v7, v10}, Lcom/android/phone/TPhoneService;->access$1800(Lcom/android/phone/TPhoneService;I)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v8, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/TPhoneService;->sendSuppServiceNotification(Landroid/os/AsyncResult;)V
    invoke-static {v8, v7}, Lcom/android/phone/TPhoneService;->access$1900(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # setter for: Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;
    invoke-static {v7, v12}, Lcom/android/phone/TPhoneService;->access$1002(Lcom/android/phone/TPhoneService;Lcom/skt/prod/phone/TCall;)Lcom/skt/prod/phone/TCall;

    goto/16 :goto_0

    :sswitch_a
    iget-object v7, p0, Lcom/android/phone/TPhoneService$3;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v7}, Lcom/android/phone/TPhoneService;->access$700(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x6e -> :sswitch_5
        0x70 -> :sswitch_6
        0x71 -> :sswitch_7
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3eb -> :sswitch_a
    .end sparse-switch
.end method
