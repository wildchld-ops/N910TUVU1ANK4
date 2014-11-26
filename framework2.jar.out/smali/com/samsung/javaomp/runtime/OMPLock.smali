.class public Lcom/samsung/javaomp/runtime/OMPLock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/javaomp/runtime/IOMPLock;


# instance fields
.field private volatile semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyLock()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public initLock()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public setLock()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string v1, "Unhandled interruption"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testLock()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsetLock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPLock;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
