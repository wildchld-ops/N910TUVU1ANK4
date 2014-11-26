.class Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBuffer"
.end annotation


# instance fields
.field private bSavedInFile:Z

.field private bSwitchedToChild:Z

.field private final bufOffset:J

.field private bufStartReadTime:J

.field private childChunkEnd:J

.field private childChunkInput:Ljava/io/InputStream;

.field private childChunkStart:J

.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;

.field private fileBuf:Ljava/io/File;

.field private firstBlockOffset:I

.field private fullRead:Z

.field private hasReadLen:I

.field private hasReadLenForSpeed:I

.field private lastTime:J

.field private mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mBufferLength:I

.field private final mID:I

.field private offset:J

.field private readOffset:J

.field private restLen:I

.field private sockID:I

.field private startTime:J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field private totalContinuousChunk:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V
    .locals 5
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p7    # I
    .param p8    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/LinkedList",
            "<[B>;II)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufStartReadTime:J

    iput p4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    iput p7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    iput p5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    iput-object p6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    iput p8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->createTempBufFile()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    return-void

    :cond_1
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    monitor-enter v2

    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private closeAndDelFile()V
    .locals 4

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close and delete tmp buffer file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V

    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: buffered file removed (main) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->clearBufferDir()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private createTempBufFile()Z
    .locals 6

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".sbBuf_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to save buffer to file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createBufferDir()V

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v0, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: buffered file generated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    monitor-exit v3

    :goto_0
    return v2

    :catch_0
    move-exception v1

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public changeSockID(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    return-void
.end method

.method public clearBuffer()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method public getHasReadLen()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    return-wide v0
.end method

.method public getRestLength()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    return v0
.end method

.method public getSockID()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    return v0
.end method

.method public getToBeReadLength()J
    .locals 2

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalChunks()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    return v0
.end method

.method public isBufferInFile()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-nez v1, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-gtz v1, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isFullRead()Z
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(I[BI)J
    .locals 8
    .param p1    # I
    .param p2    # [B
    .param p3    # I

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    iget v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    if-eq v6, p1, :cond_1

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-boolean v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v6, :cond_5

    :try_start_0
    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    iget-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    iget v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    iget v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v6, 0x3

    aput-byte v6, v4, v5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    iget-wide v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->lastTime:J

    iget-wide v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    sub-long v1, v4, v6

    int-to-long v4, p3

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v6, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v6, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v6, :cond_4

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource check: buffered file is already removed since download cancelled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    int-to-long v4, p3

    goto :goto_0

    :cond_4
    sget-boolean v6, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v6, :cond_0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    array-length v4, p2

    if-ne v4, p3, :cond_6

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-array v3, p3, [B

    invoke-static {p2, v7, v3, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public push(Ljava/io/InputStream;JJ)V
    .locals 6
    .param p1    # Ljava/io/InputStream;
    .param p2    # J
    .param p4    # J

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    iput-wide p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iput-wide p4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    sub-long v2, p4, p2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v2, v3, :cond_1

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer full read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fullRead:Z

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    :cond_1
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push inputstream to data buffer from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public read([BII)I
    .locals 18
    .param p1    # [B
    .param p2    # I
    .param p3    # I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v13, :cond_e

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufStartReadTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufStartReadTime:J

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    if-lez v10, :cond_6

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    int-to-long v15, v10

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-lt v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v15, 0x4

    aput-byte v15, v13, v14

    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resource check: finish reading chunk "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with length "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", in which "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is from cache file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is from child input "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v13, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5900(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBufferLength:I

    if-ge v13, v14, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v13

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->access$6000(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;)I

    move-result v13

    const/16 v14, -0x64

    if-eq v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v13

    iget-wide v13, v13, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v15}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v15

    iget-wide v15, v15, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    cmp-long v13, v13, v15

    if-ltz v13, :cond_6

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufStartReadTime:J

    sub-long v11, v13, v15

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long v7, v13, v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v14, v7, v8, v11, v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v14

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v13, v14, v15}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5902(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_13

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_13

    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calculate buf read speed with len="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " speed="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v14}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5900(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v13, v10

    goto/16 :goto_0

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v13, v13, v15

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v14, v14

    move/from16 v0, p3

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1, v14}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    if-nez v13, :cond_a

    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resource check: finish reading chunk "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with length "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bufOffset:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from cache file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", now bytesRemaining data "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " will be read from child input "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    :cond_a
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->readOffset:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v13, v13, v15

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "now start to read from childChunkInput "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v13, v13, Lorg/apache/http/impl/client/TwoChunkInputStream;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v13, Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isClosed()Z

    move-result v13

    if-eqz v13, :cond_d

    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "childChunkInput is closed : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_c
    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    const/4 v10, -0x1

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    monitor-enter v14

    move/from16 v3, p2

    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_11

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    :cond_10
    :goto_3
    monitor-exit v14

    goto/16 :goto_1

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    :cond_11
    :try_start_3
    array-length v13, v4

    move-object/from16 v0, p0

    iget v15, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    sub-int v9, v13, v15

    add-int v13, v10, v9

    move/from16 v0, p3

    if-gt v13, v0, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    move-object/from16 v0, p1

    invoke-static {v4, v13, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v9

    add-int/2addr v3, v9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move/from16 v0, p3

    if-ne v10, v0, :cond_f

    goto :goto_3

    :cond_12
    sub-int v6, p3, v10

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    move-object/from16 v0, p1

    invoke-static {v4, v13, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_13
    sget-boolean v13, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot calculate buf read speed with len="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public removeTail(I)V
    .locals 6
    .param p1    # I

    iget-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLen:I

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->restLen:I

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    array-length v4, v0

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    array-length v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTotalChunks(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    return-void
.end method

.method public startReceiveData()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startTime:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:I

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    return-void
.end method

.method public switchSocket(IZ)[J
    .locals 6
    .param p1    # I
    .param p2    # Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v1

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_BLOCKSIZE_TO_HANDOVER:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    if-nez p2, :cond_1

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Socket do not need to switch"

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [J

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->handOver()V

    :cond_2
    const/4 v1, 0x4

    new-array v0, v1, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->offset:J

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->mID:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->sockID:I

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
