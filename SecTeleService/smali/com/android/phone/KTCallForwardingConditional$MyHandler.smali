.class Lcom/android/phone/KTCallForwardingConditional$MyHandler;
.super Landroid/os/Handler;
.source "KTCallForwardingConditional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/KTCallForwardingConditional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingConditional;


# direct methods
.method private constructor <init>(Lcom/android/phone/KTCallForwardingConditional;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/KTCallForwardingConditional;Lcom/android/phone/KTCallForwardingConditional$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/KTCallForwardingConditional;
    .param p2    # Lcom/android/phone/KTCallForwardingConditional$1;

    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;-><init>(Lcom/android/phone/KTCallForwardingConditional;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const-string v4, "KTCallForwardingConditional"

    const-string v5, "handleGetCFResponse: done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/phone/KTCallForwardingConditional;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    const-string v4, "KTCallForwardingConditional"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse: ar.exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Lcom/android/phone/KTCallForwardingConditional;->showReturnError(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v4

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v4, v1

    if-nez v4, :cond_2

    const-string v4, "KTCallForwardingConditional"

    const-string v5, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_0

    const-string v4, "KTCallForwardingConditional"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    # getter for: Lcom/android/phone/KTCallForwardingConditional;->mServiceClass:I
    invoke-static {v4}, Lcom/android/phone/KTCallForwardingConditional;->access$100(Lcom/android/phone/KTCallForwardingConditional;)I

    move-result v4

    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lcom/android/phone/KTCallForwardingConditional;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    const-string v2, "KTCallForwardingConditional"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSetCFResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lcom/android/phone/KTCallForwardingConditional;->showReturnError(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "KTCallForwardingConditional"

    const-string v3, "handleSetCFResponse: re get"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    # getter for: Lcom/android/phone/KTCallForwardingConditional;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/KTCallForwardingConditional;->access$500(Lcom/android/phone/KTCallForwardingConditional;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v3, v3, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->this$0:Lcom/android/phone/KTCallForwardingConditional;

    iget v5, v5, Lcom/android/phone/KTCallForwardingConditional;->reason:I

    const/4 v6, 0x1

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

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
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/KTCallForwardingConditional$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
