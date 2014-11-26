.class Lcom/android/phone/KTCallWaiting$MyHandler;
.super Landroid/os/Handler;
.source "KTCallWaiting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/KTCallWaiting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallWaiting;


# direct methods
.method private constructor <init>(Lcom/android/phone/KTCallWaiting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/KTCallWaiting;Lcom/android/phone/KTCallWaiting$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/KTCallWaiting;
    .param p2    # Lcom/android/phone/KTCallWaiting$1;

    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;-><init>(Lcom/android/phone/KTCallWaiting;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "KTCallWaiting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/android/phone/KTCallWaiting;->showReturnError(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-virtual {v2, v5}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "KTCallWaiting"

    const-string v3, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v5

    add-int/lit8 v1, v2, 0x1

    iget-object v2, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    invoke-virtual {v2, v1}, Lcom/android/phone/KTCallWaiting;->handleGetCallWaitingResult(I)V

    goto :goto_0
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "KTCallWaiting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->showReturnError(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "KTCallWaiting"

    const-string v2, "handleSetCallWaitingResponse: CW state successfully queried."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/KTCallWaiting$MyHandler;->this$0:Lcom/android/phone/KTCallWaiting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/KTCallWaiting;->handleSetCallWaitingResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallWaiting$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
