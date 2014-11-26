.class Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccOperation"
.end annotation


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mResult:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/PhoneInterfaceManager;
    .param p2    # Lcom/android/phone/PhoneInterfaceManager$1;

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManager$UiccOperation;
    .param p1    # Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    return-object p1
.end method

.method private waitHandler()V
    .locals 2

    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private waitResult()V
    .locals 3

    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "wait for done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mDone:Z

    return-void
.end method


# virtual methods
.method declared-synchronized calculateAka([B[B)Ljava/lang/String;
    .locals 3
    .param p1    # [B
    .param p2    # [B

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$UiccOperation;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # [B
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitHandler()V

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager$UiccOperation;->waitResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
