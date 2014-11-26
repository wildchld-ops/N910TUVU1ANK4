.class Lcom/android/incallui/CallHandlerService$1;
.super Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallHandlerService;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallHandlerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bringToForeground(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bringToForegroundIgnoreState(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onAudioModeChange(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onChangeInContent(I)V
    .locals 5
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onDisconnect() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onEmergencyModeChange(I)V
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onForceUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onForceUpdate() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onHdVoiceStatusChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x17

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onHoldCallStateChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x10

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error processing onIncoming() call."

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onIncomingIconMode(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Ljava/util/List;

    const-string v3, "reject_call_with_message_icon_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconmode, onIncomingCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconmode, iconModeItems is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iconmode, Error processing onIncoming() call."

    invoke-static {v3, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error happens, IconMode is not supported!! Don\'t run here!"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhotoRingStateChange(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPostDialPause(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPostDialPauseComplete(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPostDialWait(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 6
    .param p1    # I

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportedAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onSupportedAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onUpdate() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVoicePrivacyModeChange(Z)V
    .locals 7
    .param p1    # Z

    const/4 v1, 0x0

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onVoicePrivacyModeChange"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onVoicePrivacyModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onWBModeChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x14

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/ICallCommandService;

    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCallService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing setCallCommandservice() call"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
