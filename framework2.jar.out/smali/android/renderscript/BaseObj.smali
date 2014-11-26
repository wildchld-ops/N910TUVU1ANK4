.class public Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field private mDestroyed:Z

.field private mID:I

.field private mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/renderscript/RenderScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/renderscript/RenderScript;->validate()V

    iput-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    return-void
.end method

.method private helpDestroy()V
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v2, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v2, v3}, Landroid/renderscript/RenderScript;->nObjDestroy(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    const/4 v2, 0x0

    iput v2, p0, Landroid/renderscript/BaseObj;->mID:I

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method checkValid()V
    .locals 2

    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/renderscript/BaseObj;

    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    iget v4, v0, Landroid/renderscript/BaseObj;->mID:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid/renderscript/BaseObj;->helpDestroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getID(Landroid/renderscript/RenderScript;)I
    .locals 2
    .param p1    # Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using a destroyed object."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal error: Object id 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    if-eq p1, v0, :cond_2

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string/jumbo v1, "using object with mismatched context."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method setID(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Internal Error, reset of object ID."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName requires a string of non-zero length."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName does not accept a zero length string."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "setName object already has a name."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(I[B)V

    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method updateFromNative()V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    return-void
.end method
