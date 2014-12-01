.class Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardAppWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardAppWidgetProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardAppWidgetProvider;Lcom/android/phone/CallForwardAppWidgetProvider$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CallForwardAppWidgetProvider;
    .param p2    # Lcom/android/phone/CallForwardAppWidgetProvider$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;-><init>(Lcom/android/phone/CallForwardAppWidgetProvider;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/16 v7, 0x190

    const/4 v8, 0x1

    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse: done"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_1

    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/phone/CallForwardingListener;->onFinished(Z)V

    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    sput-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    const-string v5, "CallForwardAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v6, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v6, v5}, Lcom/android/phone/CallForwardingListener;->onException(Lcom/android/internal/telephony/CommandException;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v8}, Lcom/android/phone/CallForwardingListener;->onFinished(Z)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "userObj is Throwable instance !!"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v7}, Lcom/android/phone/CallForwardingListener;->onError(I)V

    :cond_3
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v5

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v5, v1

    if-nez v5, :cond_4

    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v5, v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v5, Lcom/android/phone/CallForwardAppWidgetProvider;->cfListener:Lcom/android/phone/CallForwardingListener;

    invoke-interface {v5, v7}, Lcom/android/phone/CallForwardingListener;->onError(I)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    array-length v4, v1

    :goto_2
    if-ge v2, v4, :cond_0

    const-string v5, "CallForwardAppWidgetProvider"

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    aget-object v3, v1, v2

    iget-object v5, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    sget-object v6, Lcom/android/phone/CFType;->VOICE:Lcom/android/phone/CFType;

    invoke-virtual {v5, v6, v3}, Lcom/android/phone/CallForwardAppWidgetProvider;->handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V

    :cond_5
    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    aget-object v3, v1, v2

    iget-object v5, p0, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->this$0:Lcom/android/phone/CallForwardAppWidgetProvider;

    sget-object v6, Lcom/android/phone/CFType;->VIDEO:Lcom/android/phone/CFType;

    invoke-virtual {v5, v6, v3}, Lcom/android/phone/CallForwardAppWidgetProvider;->handleCallForwardResult(Lcom/android/phone/CFType;Lcom/android/internal/telephony/CallForwardInfo;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string v1, "CallForwardAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    const-string v1, "CallForwardAppWidgetProvider"

    const-string v2, "handleSetCFResponse: re get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v1, Lcom/android/phone/CallForwardAppWidgetProvider;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v5, v2, v4, v3}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
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
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardAppWidgetProvider$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
