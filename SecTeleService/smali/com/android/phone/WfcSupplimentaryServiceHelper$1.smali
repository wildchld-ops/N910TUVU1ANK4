.class Lcom/android/phone/WfcSupplimentaryServiceHelper$1;
.super Ljava/lang/Object;
.source "WfcSupplimentaryServiceHelper.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WfcSupplimentaryServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;


# direct methods
.method constructor <init>(Lcom/android/phone/WfcSupplimentaryServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onError(IILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError() () with sessionID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with errorMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$100(Lcom/android/phone/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$100(Lcom/android/phone/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onError() no pending command"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onUSSDResponse(IZ)V
    .locals 7
    .param p1    # I
    .param p2    # Z

    const/4 v4, 0x0

    const/4 v3, 0x1

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUSSDResponse() with sessionID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$100(Lcom/android/phone/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    iget v2, v1, Landroid/os/Message;->arg2:I

    if-eq v2, v3, :cond_1

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    :goto_1
    invoke-static {v1, v4, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->this$0:Lcom/android/phone/WfcSupplimentaryServiceHelper;

    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->mSSPendingCommands:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$100(Lcom/android/phone/WfcSupplimentaryServiceHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_1

    :cond_2
    # getter for: Lcom/android/phone/WfcSupplimentaryServiceHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/WfcSupplimentaryServiceHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onUSSDResponse() no pending command"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorcode"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errormessage"

    invoke-virtual {p3, v2}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->onError(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "sessionid"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "result"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/WfcSupplimentaryServiceHelper$1;->onUSSDResponse(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7e0 -> :sswitch_0
        0x7e4 -> :sswitch_1
    .end sparse-switch
.end method
