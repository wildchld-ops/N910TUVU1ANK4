.class Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RangeRequest"
.end annotation


# instance fields
.field private bHandover:Z

.field public bIOExceptionDuringContinueChunk:Z

.field private chunkStartTime:J

.field private connInfID:I

.field private currentBlockNumber:I

.field private dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field director:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field private mbReconnect:Z

.field rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field public rrExceptionCount:I

.field public rrStatus:I

.field private sockID:I

.field private t0:J

.field private t1:J

.field private t2:J

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

.field private final threadName:Ljava/lang/String;

.field private timer:[J

.field public totalElapsedTime:J

.field private totalReadSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;I)V
    .locals 5
    .param p2    # I

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    iput v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    iput-boolean v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    if-nez v0, :cond_0

    const-string v0, "WIFI_Socket_Thread"

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    :goto_0
    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    iput-wide v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    new-instance v0, Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v1, p1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iput-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    return-void

    :cond_0
    const-string v0, "Mobile_Socket_Thread"

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    goto :goto_0
.end method

.method private reconnect(I)Z
    .locals 12
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "try to connect again"

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    iput-boolean v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing the connection for socket id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v0

    aget-object v2, v0, p1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v0

    aget-object v1, v0, p1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {p1, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/client/DefaultRequestDirector;->reconnect(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating socket for the "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "socket id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v10, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long v7, v3, v10

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->reconnTime:[J

    iget v3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v7, v0, v3

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v6

    move v0, v9

    goto :goto_0
.end method

.method private submitData()V
    .locals 9

    const/4 v4, 0x2

    new-array v2, v4, [J

    const/4 v4, 0x2

    new-array v3, v4, [J

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v4

    aget-object v4, v4, v1

    iget-wide v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    aput-wide v4, v2, v1

    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v4

    aget-object v4, v4, v1

    iget-wide v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit speed for rr case - socket[0]: len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", speed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit speed for rr case - socket[1]: len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v3, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", speed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const/4 v7, 0x1

    aget-wide v7, v3, v7

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/CustomHttpClient;->submitMultiSocketData([J[J)V

    :cond_2
    :goto_1
    const/4 v4, 0x4

    new-array v0, v4, [J

    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    mul-int/lit8 v4, v1, 0x2

    aget-wide v5, v2, v1

    aput-wide v5, v0, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v5, v3, v1

    aput-wide v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-boolean v4, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not to submit speed for rr case - socket[0]: len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not to submit speed for rr case - socket[1]: len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v5, v3, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    invoke-static {v4, v5, v0}, Lorg/apache/http/impl/client/CustomHttpClient;->reportSBUsage(J[J)V

    const/4 v4, 0x1

    sput-boolean v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->bIsDataSubmited:Z

    return-void
.end method


# virtual methods
.method public closeHTTP()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v1, v1, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_0
    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "try to close current HTTP session"

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handOver()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    invoke-virtual {p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    return-void
.end method

.method public run()V
    .locals 85

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # operator++ for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1808()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v4

    :try_start_0
    sget v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x1

    sget v52, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    const-wide/16 v82, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_1
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5600(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v60

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v60

    iget v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/16 v31, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v51

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1e

    add-int/lit8 v31, v31, 0x1

    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v31

    if-le v0, v3, :cond_1f

    :cond_4
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v31

    if-gt v0, v3, :cond_5

    if-lez v21, :cond_20

    :cond_5
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to check socket connectivity ReCon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v3, v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    if-eqz v3, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_a

    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v58

    if-nez v58, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    aget-object v3, v3, v60

    iget v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The interface for socket id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "other thread is RR_STOPPED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5600(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v58

    if-eqz v58, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5600(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, 0x2

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other socket interface ip is not null and so changing the socket id to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for thread is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->reconnect(I)Z

    move-result v3

    if-eqz v3, :cond_22

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download thread bind new socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v3, :cond_25

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "Full download complete -> mFinished = true, break"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    :cond_c
    :goto_7
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "download thread end"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-nez v3, :cond_7d

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # operator++ for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3908(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total finished thread num = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_13

    move-result v3

    const/4 v8, 0x2

    if-ge v3, v8, :cond_7e

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    goto :goto_9

    :catch_0
    move-exception v3

    goto :goto_9

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    if-nez v3, :cond_10

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "Block status is not initialized"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3700(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    if-gt v3, v8, :cond_16

    const/16 v59, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v51

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, 0x3

    if-ne v3, v8, :cond_12

    add-int/lit8 v59, v59, 0x1

    :cond_11
    add-int/lit8 v51, v51, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, 0x2

    if-gt v3, v8, :cond_11

    :cond_13
    const/4 v3, 0x2

    move/from16 v0, v59

    if-ge v0, v3, :cond_14

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: full read block "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " < "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_15

    const-string v3, "BlockStatus: there are continue number of portions fulled 2"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Is request aborted = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_2

    :cond_16
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: block size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " > Max Size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3700(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_17
    const/4 v14, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v51

    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, v51

    if-gt v0, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1a

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BlockStatus: a blocked chunk: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_18
    const/4 v14, 0x1

    :cond_19
    if-nez v14, :cond_1

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1b

    const/16 v51, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBlockStatus["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v8

    aget-byte v8, v8, v51

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v51, v51, 0x1

    goto :goto_c

    :cond_1a
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_b

    :cond_1b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_1c
    :goto_d
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v70

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1d

    const-string v3, "RangeRequest wait time out"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_1

    :catch_1
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_1c

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v51

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    :cond_1f
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_4

    :cond_20
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5700(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v8

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5700(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v8

    aget-wide v8, v8, v60

    const-wide/16 v10, 0x2

    mul-long/2addr v8, v10

    cmp-long v3, v3, v8

    if-gtz v3, :cond_5

    :cond_21
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_22
    :try_start_d
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_23

    const-string v3, "Reconnect returns false."

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto/16 :goto_6

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v3
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_24

    const-string v3, "HttpException is thrown while reconnecting"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is RequestAborted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    goto/16 :goto_6

    :cond_25
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_26

    const-string v3, "start to get another range request "

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_26
    const-wide/16 v27, 0x0

    const-wide/16 v80, 0x0

    const/16 v18, 0x0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v18

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :cond_27
    :goto_e
    if-eqz v18, :cond_28

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2d

    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v77

    :cond_29
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_2b

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    if-eqz v18, :cond_2a

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2b

    :cond_2a
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    monitor-enter v4
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->IDLE_THREAD_WAIT_INTERVAL:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4

    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v18

    monitor-exit v4

    goto :goto_f

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v3
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    :catch_4
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_29

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_f

    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v3
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_5

    :catch_5
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_27

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v3
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v3, v3, v82

    sub-long v82, v3, v77

    if-eqz v18, :cond_2c

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v3, :cond_2f

    :cond_2c
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextHTTPBlock() results 0, finish reading totalLength("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), break"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2e

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2f

    const-string v3, "this thread is stopped, and the other thread is downloading continue chunk"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2e
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextHTTPBlock() results id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2f
    const/4 v3, 0x2

    aget-wide v27, v18, v3

    const/4 v3, 0x3

    aget-wide v3, v18, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v27, v3, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v79, 0x0

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catch Lorg/apache/http/HttpException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v8, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v27, v3

    if-lez v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getTotalChunks()I

    move-result v79

    move/from16 v0, v79

    new-array v0, v0, [I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v30, v29

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunkLengths[0]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v30, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_30
    const/16 v54, 0x1

    :goto_10
    move-object/from16 v0, v30

    array-length v3, v0

    move/from16 v0, v54

    if-ge v0, v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v3, v3, v54

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v54

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v3, v8

    long-to-int v3, v3

    aput v3, v30, v54

    :goto_11
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunkLengths["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v30, v54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/apache/http/HttpException; {:try_start_1d .. :try_end_1d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8

    :cond_31
    add-int/lit8 v54, v54, 0x1

    goto :goto_10

    :catchall_7
    move-exception v3

    :try_start_1e
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v3
    :try_end_1f
    .catch Lorg/apache/http/HttpException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_8

    :catch_6
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_32

    const-string v3, "HttpException is thrown"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    add-long v3, v3, v80

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t0:J

    sub-long/2addr v3, v8

    sub-long v3, v3, v82

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    goto/16 :goto_0

    :cond_34
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    aput v3, v30, v54
    :try_end_20
    .catch Lorg/apache/http/HttpException; {:try_start_20 .. :try_end_20} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_8

    goto :goto_11

    :catch_7
    move-exception v50

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_35

    const-string v3, "in InterruptedException, handle handover"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    goto :goto_12

    :cond_36
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    invoke-interface {v4}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v8, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v11}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v9

    invoke-virtual {v3, v4, v8, v9}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v4, v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v5, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v7, v18, v8

    const/4 v9, 0x1

    aget-wide v9, v18, v9

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v12, v12, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v11, v12}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    move/from16 v84, v0

    aget-object v12, v12, v84

    invoke-virtual/range {v3 .. v12}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;Ljava/net/InetAddress;)Lorg/apache/http/HttpResponse;

    move-result-object v66

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Response time difference from main for range request id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mResponeTimeFromMainSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_37
    const-string v3, "Connection"

    move-object/from16 v0, v66

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v32

    if-nez v32, :cond_41

    const/4 v3, 0x0

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest: Reconnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_38
    invoke-interface/range {v66 .. v66}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v67

    invoke-interface/range {v66 .. v66}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    invoke-interface/range {v49 .. v49}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v53

    const/16 v3, 0xce

    move/from16 v0, v67

    if-eq v0, v3, :cond_39

    const/16 v3, 0xc8

    move/from16 v0, v67

    if-ne v0, v3, :cond_3a

    :cond_39
    cmp-long v3, v33, v27

    if-eqz v3, :cond_43

    :cond_3a
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code is not 206 or 200 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or length is not expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "but length expected is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v8, v18, v4

    const/4 v4, 0x0

    aget-wide v10, v18, v4

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3b
    if-eqz v13, :cond_42

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move to RR_FAILED from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catch Lorg/apache/http/HttpException; {:try_start_21 .. :try_end_21} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_8

    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_3e
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_23
    .catch Lorg/apache/http/HttpException; {:try_start_23 .. :try_end_23} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_8

    goto/16 :goto_7

    :catch_8
    move-exception v48

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading thread blocked by some Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_3f
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    if-eqz v13, :cond_74

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_40

    const-string v3, "move to RR_EXCEPTION"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    :try_start_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_71

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_71

    if-lez v79, :cond_70

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v29

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_8
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    throw v3

    :cond_41
    :try_start_25
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_25
    .catch Lorg/apache/http/HttpException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_8

    move-result v3

    goto/16 :goto_13

    :catchall_9
    move-exception v3

    :try_start_26
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    :try_start_27
    throw v3

    :cond_42
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response code is not 206 or 200 : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_43
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response code is 206 or 200 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and length is expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v33

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_44
    if-eqz v13, :cond_49

    const/4 v13, 0x0

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move to RR_SUCCESS from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_45
    const-string v3, "Content-Range"

    move-object/from16 v0, v66

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    const-string v3, "/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4
    :try_end_27
    .catch Lorg/apache/http/HttpException; {:try_start_27 .. :try_end_27} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_8

    const-wide/16 v8, 0x0

    cmp-long v3, v35, v8

    if-eqz v3, :cond_46

    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    cmp-long v3, v35, v8

    if-eqz v3, :cond_46

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_47

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    monitor-exit v4

    goto/16 :goto_7

    :catchall_a
    move-exception v3

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    :try_start_29
    throw v3
    :try_end_29
    .catch Lorg/apache/http/HttpException; {:try_start_29 .. :try_end_29} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_8

    :cond_47
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-nez v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    :cond_48
    :goto_15
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    :cond_49
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t2:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long v73, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v73, v3, v4

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to read body for block["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], bytes to read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.socket.timeout"

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-interface {v3, v4, v8}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v68, v0

    const-wide/16 v3, 0x2

    div-long v3, v68, v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->TIMEOUT_WRITE_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v68

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_2b
    .catch Lorg/apache/http/HttpException; {:try_start_2b .. :try_end_2b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_8

    :try_start_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    const/16 v56, 0x0

    :try_start_2d
    sget v52, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    const/16 v43, 0x0

    move/from16 v57, v56

    :goto_16
    cmp-long v3, v80, v27

    if-gez v3, :cond_58

    const/16 v22, 0x0

    if-nez v30, :cond_50

    move/from16 v0, v52

    int-to-long v3, v0

    sub-long v8, v27, v80

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v22, v0

    :goto_17
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest alloc memory for new block size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4b
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v23, v0

    const/16 v72, 0x0

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    shl-int/lit8 v4, v52, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_2d
    .catch Lorg/apache/http/HttpException; {:try_start_2d .. :try_end_2d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_8

    move-result v52

    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_a
    .catch Lorg/apache/http/HttpException; {:try_start_2e .. :try_end_2e} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_7

    :cond_4c
    :goto_18
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    if-nez v3, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_51

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4d

    const-string v3, "APP not reading, waiting"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_b

    :cond_4d
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_9
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    goto :goto_18

    :catch_9
    move-exception v48

    :try_start_31
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4c

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_18

    :catchall_b
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    :try_start_32
    throw v3
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_a
    .catch Lorg/apache/http/HttpException; {:try_start_32 .. :try_end_32} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_7

    :catch_a
    move-exception v50

    :try_start_33
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bHandover:Z

    if-eqz v3, :cond_5d

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This block shall be read by another socket, this socket is slow: block["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], socket["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4e
    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v80, v80, v3

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_33
    .catch Lorg/apache/http/HttpException; {:try_start_33 .. :try_end_33} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_8

    :cond_4f
    :try_start_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_48

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_a

    goto/16 :goto_15

    :catchall_c
    move-exception v3

    :try_start_35
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    :try_start_36
    throw v3

    :cond_50
    aget v3, v30, v29

    sub-int v3, v3, v43

    move/from16 v0, v52

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
    :try_end_36
    .catch Lorg/apache/http/HttpException; {:try_start_36 .. :try_end_36} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_36} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_8

    move-result v22

    goto/16 :goto_17

    :cond_51
    :try_start_37
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    :try_start_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v63

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v61, v0

    move-wide/from16 v19, v63

    :cond_52
    move-object/from16 v0, v23

    array-length v3, v0

    sub-int v3, v3, v24

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v55

    if-lez v55, :cond_57

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-nez v3, :cond_57

    move/from16 v0, v55

    int-to-long v3, v0

    add-long v80, v80, v3

    add-int v24, v24, v55

    add-int v43, v43, v55

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v8, v3, v4

    move/from16 v0, v55

    int-to-long v10, v0

    sub-long/2addr v8, v10

    aput-wide v8, v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v38, v0

    sub-long v46, v40, v63

    sub-long v44, v38, v61

    move-wide/from16 v16, v40

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->access$5700(Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;)[J

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v75, v3, v4

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DATA_READ_SPEED_CALC:I

    int-to-long v3, v3

    cmp-long v3, v80, v3

    if-lez v3, :cond_56

    sget v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINSIZEFORSPEED:I

    int-to-long v3, v3

    cmp-long v3, v44, v3

    if-ltz v3, :cond_53

    sget-wide v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MINTIMEFORSPEED:J

    cmp-long v3, v46, v3

    if-gez v3, :cond_54

    :cond_53
    sget-wide v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXTIMEFORSPEED:J

    cmp-long v3, v46, v3

    if-ltz v3, :cond_56

    :cond_54
    const-wide/16 v3, 0x0

    cmp-long v3, v75, v3

    if-nez v3, :cond_5a

    sget-boolean v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_CALC:Z

    if-eqz v3, :cond_59

    const-wide/16 v3, 0x8

    mul-long v3, v3, v80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v8, v40, v8

    div-long v75, v3, v8

    :cond_55
    :goto_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-wide/from16 v0, v75

    invoke-virtual {v3, v4, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->setSpeed(IJ)V

    move-wide/from16 v63, v40

    move-wide/from16 v61, v38

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest set speed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v75

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_56
    sub-long v3, v16, v19

    cmp-long v3, v3, v68

    if-ltz v3, :cond_5c

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v72, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v72

    move/from16 v2, v24

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_a
    .catch Lorg/apache/http/HttpException; {:try_start_38 .. :try_end_38} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_7

    :cond_57
    :goto_1a
    :try_start_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_5e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_58
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish to read body, bytes read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_39
    .catch Lorg/apache/http/HttpException; {:try_start_39 .. :try_end_39} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_39} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_8

    goto/16 :goto_12

    :cond_59
    const-wide/16 v3, 0x8

    mul-long v3, v3, v44

    :try_start_3a
    div-long v75, v3, v46

    goto/16 :goto_19

    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_DOWNLOADED_DATA_FOR_SPEED_CALC:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v80, v3

    if-gtz v3, :cond_5b

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v3, v40, v3

    sget-wide v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAXMAXTIMEFORSPEED:J

    cmp-long v3, v3, v8

    if-ltz v3, :cond_55

    :cond_5b
    const-wide/16 v3, 0x8

    mul-long v3, v3, v80

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->chunkStartTime:J

    sub-long v8, v40, v8

    div-long v75, v3, v8

    goto/16 :goto_19

    :cond_5c
    move-object/from16 v0, v23

    array-length v3, v0
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_a
    .catch Lorg/apache/http/HttpException; {:try_start_3a .. :try_end_3a} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3a} :catch_7

    move/from16 v0, v24

    if-ne v3, v0, :cond_52

    goto :goto_1a

    :cond_5d
    :try_start_3b
    throw v50

    :cond_5e
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest get a buffer block, offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf_offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_5f
    move-object/from16 v0, v23

    array-length v3, v0

    move/from16 v0, v24

    if-eq v0, v3, :cond_60

    if-eqz v72, :cond_6b

    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_3b
    .catch Lorg/apache/http/HttpException; {:try_start_3b .. :try_end_3b} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3b} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_8

    if-eqz v72, :cond_62

    :try_start_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, v72

    array-length v9, v0

    move-object/from16 v0, v72

    invoke-virtual {v3, v8, v0, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v25, v0

    :goto_1b
    if-gez v25, :cond_63

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_61

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This block shall be read by another socket, this socket is slow: block["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "], socket["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_61
    move/from16 v0, v24

    int-to-long v8, v0

    sub-long v80, v80, v8

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :catchall_d
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_d

    :try_start_3d
    throw v3
    :try_end_3d
    .catch Lorg/apache/http/HttpException; {:try_start_3d .. :try_end_3d} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3d} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_8

    :cond_62
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    move-object/from16 v0, v23

    array-length v9, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v8, v0, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_d

    move-result-wide v8

    long-to-int v0, v8

    move/from16 v25, v0

    goto :goto_1b

    :cond_63
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_c
    .catchall {:try_start_3f .. :try_end_3f} :catchall_d

    :goto_1c
    :try_start_40
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_d

    :try_start_41
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest response buffer["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v4, v4, v29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v56, v57, 0x1

    move/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] inserted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v72, :cond_69

    move-object/from16 v0, v23

    array-length v3, v0

    :goto_1d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :goto_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v42

    if-eqz v30, :cond_6a

    aget v3, v30, v29

    move/from16 v0, v43

    if-ne v0, v3, :cond_64

    add-int/lit8 v3, v79, -0x1

    move/from16 v0, v29

    if-ge v0, v3, :cond_64

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v7, v3, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    mul-int/2addr v3, v7

    int-to-long v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    add-long v5, v3, v8

    const/16 v43, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12
    :try_end_41
    .catch Lorg/apache/http/HttpException; {:try_start_41 .. :try_end_41} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_41} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_8

    :try_start_42
    new-instance v3, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    aget v8, v30, v29

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    const/4 v11, 0x1

    invoke-direct/range {v3 .. v11}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_e

    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_43
    .catch Lorg/apache/http/HttpException; {:try_start_43 .. :try_end_43} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_43} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_8

    :try_start_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->dbuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_f

    :cond_64
    :try_start_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v70

    const/16 v37, 0x0

    if-lez v42, :cond_65

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v42

    const/4 v4, 0x3

    if-ne v3, v4, :cond_65

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    add-int/lit8 v4, v42, 0x1

    aget-byte v3, v3, v4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_65

    const/16 v37, 0x1

    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3700(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    if-ge v3, v4, :cond_66

    if-eqz v37, :cond_6a

    :cond_66
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_45
    .catch Lorg/apache/http/HttpException; {:try_start_45 .. :try_end_45} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_45} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_8

    :try_start_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_b
    .catchall {:try_start_46 .. :try_end_46} :catchall_10

    :cond_67
    :goto_1f
    :try_start_47
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_10

    :try_start_48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v70

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v8, v8

    cmp-long v3, v3, v8

    if-lez v3, :cond_65

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-gtz v3, :cond_65

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_68

    const-string v3, "RangeRequest wait time out"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Data is not read by the application"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_69
    move-object/from16 v0, v72

    array-length v3, v0
    :try_end_48
    .catch Lorg/apache/http/HttpException; {:try_start_48 .. :try_end_48} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_48} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_8

    goto/16 :goto_1d

    :catchall_e
    move-exception v3

    :try_start_49
    monitor-exit v12
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_e

    :try_start_4a
    throw v3
    :try_end_4a
    .catch Lorg/apache/http/HttpException; {:try_start_4a .. :try_end_4a} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_8

    :catchall_f
    move-exception v3

    :try_start_4b
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_f

    :try_start_4c
    throw v3
    :try_end_4c
    .catch Lorg/apache/http/HttpException; {:try_start_4c .. :try_end_4c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4c} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_8

    :catch_b
    move-exception v48

    :try_start_4d
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_67

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_1f

    :catchall_10
    move-exception v3

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_10

    :try_start_4e
    throw v3

    :cond_6a
    if-lez v42, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    add-int/lit8 v4, v42, -0x1

    aget-byte v3, v3, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6f

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Forcefull exception to handover to the blocked Chunk which is read by application, so that application read should not stop"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6b
    const/4 v3, -0x1

    move/from16 v0, v55

    if-ne v0, v3, :cond_6d

    cmp-long v3, v80, v27

    if-gez v3, :cond_6d

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception: totallen="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v80

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", bytesToRead= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6d
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v80

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6e
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v80

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", bytesToRead= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4e
    .catch Lorg/apache/http/HttpException; {:try_start_4e .. :try_end_4e} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_4e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_8

    :cond_6f
    move/from16 v57, v56

    goto/16 :goto_16

    :cond_70
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    goto/16 :goto_14

    :cond_71
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    if-eqz v3, :cond_72

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_73

    :cond_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v3, v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    monitor-exit v4

    goto/16 :goto_7

    :cond_73
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_8

    :cond_74
    move-object/from16 v0, v48

    instance-of v3, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_50
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    add-int/lit8 v8, v8, 0x1

    rem-int/lit8 v8, v8, 0x2

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mReadBlockNumber:Ljava/lang/Integer;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v51

    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v51

    if-ge v0, v3, :cond_75

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, v51

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v51, v51, 0x1

    goto :goto_20

    :cond_75
    invoke-static {}, Ljava/lang/System;->gc()V

    monitor-exit v4

    goto/16 :goto_12

    :catchall_11
    move-exception v3

    monitor-exit v4
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_11

    throw v3

    :cond_76
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_77

    const-string v3, "IOException is thrown"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    const-string v3, "in IOException, handle handover"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_77
    if-gtz v25, :cond_78

    move/from16 v0, v24

    int-to-long v3, v0

    sub-long v80, v80, v3

    :cond_78
    cmp-long v3, v80, v27

    if-gez v3, :cond_7c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v3, :cond_7c

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_79

    const-string v3, "Moving to Block state"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    if-lez v79, :cond_7a

    :try_start_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v8, v8, v29

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    :goto_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_12

    if-lez v79, :cond_7b

    add-int/lit8 v51, v29, 0x1

    :goto_22
    move/from16 v0, v51

    move/from16 v1, v79

    if-ge v0, v1, :cond_7b

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    add-int v4, v4, v51

    const/4 v8, 0x0

    aput-byte v8, v3, v4

    add-int/lit8 v51, v51, 0x1

    goto :goto_22

    :cond_7a
    :try_start_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->currentBlockNumber:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;->block(II)V

    goto :goto_21

    :catchall_12
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_12

    throw v3

    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    :cond_7c
    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_33

    const-string v3, "Checked if Block state is moved to BLOCKED"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_7d
    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_7e
    :try_start_53
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v3, :cond_80

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-boolean v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v3, :cond_80

    if-eqz v15, :cond_80

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_7f

    const-string v3, "submit statistics data to ConnectivityService"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_7f
    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->submitData()V

    :cond_80
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    sget-boolean v3, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v3, :cond_81

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total data downloaded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total data downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    const-string v3, "download thread exit"

    invoke-static {v3}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_81
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v4, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDefaultRequestDirectorInstance:Lorg/apache/http/impl/client/DefaultRequestDirector;

    monitor-enter v4

    :try_start_54
    sget v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_14

    return-void

    :catchall_13
    move-exception v3

    :try_start_55
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_13

    throw v3

    :catchall_14
    move-exception v3

    :try_start_56
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_14

    throw v3

    :catch_c
    move-exception v3

    goto/16 :goto_1c

    :cond_82
    move/from16 v56, v57

    goto/16 :goto_1e
.end method
