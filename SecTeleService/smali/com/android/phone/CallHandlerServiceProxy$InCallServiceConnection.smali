.class Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;
.super Ljava/lang/Object;
.source "CallHandlerServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallHandlerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallHandlerServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CallHandlerServiceProxy;
    .param p2    # Lcom/android/phone/CallHandlerServiceProxy$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;-><init>(Lcom/android/phone/CallHandlerServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service Connected"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-static {p2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallHandlerService;

    move-result-object v1

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->access$100(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/services/telephony/common/ICallHandlerService;)V

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service Connected. Cancel timer"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$200(Lcom/android/phone/CallHandlerServiceProxy;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from UI service."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$300(Lcom/android/phone/CallHandlerServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->unbind()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$400(Lcom/android/phone/CallHandlerServiceProxy;)V

    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$500(Lcom/android/phone/CallHandlerServiceProxy;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
