.class public Lcom/samsung/android/library/MultiverseClient/CGMvClient;
.super Landroid/os/Handler;
.source "CGMvClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected m_cExpirationHandler:Landroid/os/Handler;

.field protected m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected m_cRxMessenger:Landroid/os/Messenger;

.field protected m_cTxMessenger:Landroid/os/Messenger;

.field protected m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

.field protected m_pbSvcRegistered:[Z

.field protected m_ps32Info:[I

.field protected m_s32SvcRegisteredCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    const/16 v0, 0x10

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x10

    if-lt v6, v0, :cond_3

    iput v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v7, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    if-eqz v0, :cond_1

    const-string v4, "D0"

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->SendMessage(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v7, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    :cond_1
    iput-object v7, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    :cond_2
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aput-boolean v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public GetBottom()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetLeft()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetRight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetSscNum()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public GetTop()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public GetWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public Open(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-virtual {p0}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->Close()V

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    iput-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.samsung.android.app.StudyMultiverse.CGMvStudyActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.Multiverse"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CGMvClient::Open() - bindService() was failed!"

    invoke-static {v2}, Lcom/samsung/android/library/MultiverseClient/CGMvSystem;->SDebugPrintError(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v3

    :goto_1
    return v2

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    iput v3, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public SendMessage(III)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    if-eqz v0, :cond_0

    const-string v4, "D0"

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->SendMessage(IIILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public SendMessage(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "m_cTxMessenger was failed!"

    invoke-static {v2}, Lcom/samsung/android/library/MultiverseClient/CGMvSystem;->SDebugPrintError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ServiceRegister(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    if-nez v2, :cond_1

    const-string v0, "ServiceRegister() - Not Connected Yet! Try Again Later!!"

    invoke-static {v0}, Lcom/samsung/android/library/MultiverseClient/CGMvSystem;->SDebugPrintError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {p0, v2, v1, v1}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->SendMessage(III)V

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aput-boolean v0, v2, p1

    iget v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/library/MultiverseClient/CGMvClient$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/library/MultiverseClient/CGMvClient$1;-><init>(Lcom/samsung/android/library/MultiverseClient/CGMvClient;)V

    iput-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public ServiceUnregister(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x65

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->SendMessage(III)V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_pbSvcRegistered:[Z

    aput-boolean v1, v0, p1

    iget v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    iget v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_s32SvcRegisteredCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cExpirationHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "D0"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/library/MultiverseClient/IGMvListener;->IOnDataReceived(I[I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "D0"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_ps32Info:[I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cTxMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cRxMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-interface {v0}, Lcom/samsung/android/library/MultiverseClient/IGMvListener;->IOnServiceConnected()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-interface {v0}, Lcom/samsung/android/library/MultiverseClient/IGMvListener;->IOnServiceDisconnected()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_iMvListener:Lcom/samsung/android/library/MultiverseClient/IGMvListener;

    invoke-virtual {p0}, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->Close()V

    iget-object v0, p0, Lcom/samsung/android/library/MultiverseClient/CGMvClient;->m_cLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
