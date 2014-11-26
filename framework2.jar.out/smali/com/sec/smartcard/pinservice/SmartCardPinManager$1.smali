.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;
.super Ljava/lang/Object;
.source "SmartCardPinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-static {p2}, Lcom/sec/smartcard/pinservice/ISmartCardPinService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    move-result-object v2

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    const-string v1, "SmartCardPinManager"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v1, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "SmartCardPinManager"

    const-string v2, "calling queue.put"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mSmartCardPin:Lcom/sec/smartcard/pinservice/ISmartCardPinService;
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$002(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Lcom/sec/smartcard/pinservice/ISmartCardPinService;)Lcom/sec/smartcard/pinservice/ISmartCardPinService;

    const-string v0, "SmartCardPinManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/smartcard/pinservice/SmartCardPinManager$1;->this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mServiceConnectionProgress:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$102(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    return-void
.end method
