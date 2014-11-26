.class Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
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
    name = "ExtremeConditionThread"
.end annotation


# instance fields
.field private bDeprecated:Z

.field bForceStart:Z

.field bIsHandover:Z

.field private bTryBoth:Z

.field dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

.field director:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field end:J

.field expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field input:Ljava/io/InputStream;

.field isExceptionInResponse:Z

.field protected mNonBufOffset:J

.field private mSecThreadCreationResult:I

.field private mStartReadHeaderTime:J

.field public sockID:I

.field start:J

.field private switchToSocketID:I

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;IJJLorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;Z)V
    .locals 3
    .param p2    # I
    .param p3    # J
    .param p5    # J
    .param p7    # Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    .param p8    # Z

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z

    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    iput-boolean v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    const/16 v0, -0x64

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    iput p2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    iput-wide p3, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    iput-wide p5, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    iput-object p7, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    new-instance v0, Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v1, p1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {p1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    iput-boolean p8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bForceStart:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    return-void
.end method

.method static synthetic access$5302(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;Z)Z
    .locals 0
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    .param p1    # Z

    iput-boolean p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    return p1
.end method

.method static synthetic access$6000(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;)I
    .locals 1
    .param p0    # Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    return v0
.end method


# virtual methods
.method closeConnection()V
    .locals 3

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close extreme input stream in main, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    iget-object v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createTwoChunkInput(Z)V
    .locals 28
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "createTwoChunkInput: session is finished"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main Socket is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extrem read bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_7

    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v2, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v27, v0

    new-instance v2, Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v4, v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v11}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v13}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v13

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static/range {v20 .. v20}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v20

    sget v22, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getHasReadLen()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move/from16 v23, p1

    invoke-direct/range {v2 .. v25}, Lorg/apache/http/impl/client/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V

    move-object/from16 v0, v27

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getNeedToExitSecThread()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_8

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Need to start another Extreme Input"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    invoke-virtual/range {v7 .. v12}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(Ljava/io/InputStream;JJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->startRun()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_2
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in create two chunk extremInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v26

    :try_start_4
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_7

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4302(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public getSocketID()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    return v0
.end method

.method public run()V
    .locals 45

    sget v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v2, v2, 0x2

    sput v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    const/16 v30, 0x1

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v24, v2, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_0

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_0
    :goto_1
    sget v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    add-int/lit8 v2, v2, -0x2

    sput v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->sProcessUsingMultiSocket:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v4, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    if-nez v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createTwoChunkInputInMain(Z)V

    :cond_2
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: thread checking: stop ExtremThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exit from socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    :cond_5
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x2

    new-array v0, v2, [Lorg/apache/http/HttpHost;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->expCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->end:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v14, v14, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriMainInterface:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute([Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJJIZJI[Lorg/apache/http/HttpHost;I)Lorg/apache/http/HttpResponse;

    move-result-object v36

    if-nez v36, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4802(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_c

    const/16 v30, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "ExtremeConditionThread will exit"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Either the Range Request not supported or not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :catch_0
    move-exception v41

    :try_start_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_8

    invoke-static/range {v41 .. v41}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4802(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    monitor-enter p0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_b
    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    :cond_c
    :try_start_9
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "childIS is created before this exception"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_d
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_e
    if-eqz v36, :cond_11

    :try_start_a
    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x2

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4802(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "Server sends forbidden request"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_f
    monitor-enter p0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_10
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v2

    :cond_11
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    const-wide/16 v2, -0x1

    :try_start_d
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_14

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_12

    const-string v2, "thread is deprecated, break"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_12
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    monitor-enter p0

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_13
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    :cond_14
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    :cond_15
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v4, v4, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x3

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :cond_18
    :goto_4
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v37

    aput-wide v4, v2, v3

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "connection time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->connectionTime:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v3, v3, v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_19
    const-string v2, "Connection"

    move-object/from16 v0, v36

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    if-nez v26, :cond_22

    const/4 v2, 0x0

    :goto_5
    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v3, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread: Reconnect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1a
    if-eqz v36, :cond_1b

    invoke-interface/range {v36 .. v36}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_23

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1c

    const-string v2, "thread is deprecated2, break"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_1c
    monitor-enter p0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_1d
    monitor-exit p0

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    throw v2

    :cond_1e
    const/4 v2, 0x1

    :try_start_14
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    goto/16 :goto_3

    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :try_start_15
    throw v2
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v2

    monitor-enter p0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_1f
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    throw v2

    :catchall_7
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v2

    :cond_20
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_21

    const-string v2, "childIS is created before this connection"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_21
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto/16 :goto_4

    :cond_22
    :try_start_19
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Close"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getSocketTimeout()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v39, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v39, v2

    if-nez v2, :cond_25

    const-wide/16 v39, 0x1388

    :cond_25
    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :cond_26
    const/16 v32, 0x0

    :try_start_1b
    sget v29, Lorg/apache/http/impl/client/MultiSocketInputStream;->INIT_BUFFERLEN:I

    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    new-array v0, v2, [B

    move-object/from16 v20, v0

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_29

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->createTwoChunkInput(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v2, :cond_2c

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extreme Thread deprecated at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_29
    :goto_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speed of current socket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :cond_2a
    monitor-enter p0

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_2b
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v2

    :catchall_9
    move-exception v2

    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    throw v2

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)V

    goto :goto_6

    :cond_2d
    move/from16 v0, v29

    int-to-long v2, v0

    move/from16 v0, v42

    int-to-long v4, v0

    sub-long v4, v24, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v2

    if-nez v2, :cond_2e

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    :cond_2e
    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    shl-int/lit8 v3, v29, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    move-result v29

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v31, 0x0

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    :cond_2f
    :goto_7
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_33

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_30

    const-string v2, "APP not reading, waiting"

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :cond_30
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    goto :goto_7

    :catch_1
    move-exception v27

    :try_start_22
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2f

    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_a
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    :try_start_23
    throw v2
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_2
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :catch_2
    move-exception v28

    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketTimeoutException Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v3, v3, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_31
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_32

    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_32
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exception while reading data from extream thread socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :cond_33
    :try_start_25
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    :cond_34
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_36

    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, v20

    array-length v3, v0

    sub-int v3, v3, v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v31

    if-lez v31, :cond_36

    add-int v21, v21, v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->setTime(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move/from16 v0, v31

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->incByte(IJ)V

    :cond_35
    move-object/from16 v0, v20

    array-length v2, v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_2
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    move/from16 v0, v21

    if-ne v2, v0, :cond_37

    :cond_36
    :goto_8
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    goto/16 :goto_6

    :cond_37
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_38

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now it is time to stop this thread, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", buf_offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_38
    add-int v2, v42, v21

    int-to-long v2, v2

    cmp-long v2, v2, v24

    if-nez v2, :cond_39

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full data read, break: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_39
    add-int v2, v42, v21

    int-to-long v2, v2

    cmp-long v2, v2, v24

    if-lez v2, :cond_34

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full data read, break: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    :cond_3a
    move/from16 v0, v42

    int-to-long v2, v0

    sub-long v2, v24, v2

    long-to-int v0, v2

    move/from16 v21, v0

    goto/16 :goto_8

    :cond_3b
    if-lez v21, :cond_45

    :try_start_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v4, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v22

    const-wide/16 v4, -0x1

    cmp-long v2, v22, v4

    if-nez v2, :cond_3c

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Data is not pushed into the Data buffer, either socket has changed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_b
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    :try_start_2b
    throw v2
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_6

    :cond_3c
    const-wide/16 v4, 0x0

    cmp-long v2, v22, v4

    if-gez v2, :cond_3e

    const-wide/16 v4, -0x1

    mul-long v4, v4, v22

    :try_start_2c
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3d
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J

    add-long v4, v4, v22

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->start:J
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    move/from16 v0, v42

    int-to-long v4, v0

    add-long v4, v4, v22

    long-to-int v0, v4

    move/from16 v42, v0

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_7
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    :goto_9
    :try_start_2e
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    :try_start_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v2

    if-nez v2, :cond_43

    :cond_3f
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getRestLength()I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x2000000

    cmp-long v2, v4, v6

    if-lez v2, :cond_43

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now rest length of the dBuf is over limit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->getRestLength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    :cond_40
    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_6
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    :goto_b
    const-wide/high16 v34, 0x4059000000000000L

    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v5

    aput-wide v5, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v33, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v4

    aput-wide v4, v2, v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    aget-wide v4, v2, v33

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v4, v2, v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    aget-wide v6, v2, v33

    long-to-double v6, v6

    div-double v34, v4, v6

    :cond_41
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v4

    if-eq v2, v4, :cond_3f

    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->SPEED_RATIO_FOR_EXTREME_HO:I

    int-to-double v4, v2

    cmpl-double v2, v34, v4

    if-lez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->director:Lorg/apache/http/impl/client/DefaultRequestDirector;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_42
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close main socket Speed of current socket in waiting for MEM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v4, v4, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Speed of Other socket: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$6100(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v4, v4, v33

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Speed ratio is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v34

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    :try_start_33
    throw v2
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_0
    .catchall {:try_start_33 .. :try_end_33} :catchall_6

    :cond_43
    :try_start_34
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_c

    :try_start_35
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v2, :cond_27

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to swtich to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_44
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to swtich to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_45
    const/4 v2, -0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_47

    move/from16 v0, v42

    int-to-long v2, v0

    cmp-long v2, v2, v24

    if-gez v2, :cond_47

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread read body Exception: totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytesToRead= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_46
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtremeContionThread read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_47
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtremeConditionThread read body Exception2: totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytesToRead= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_48
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExtremeContionThread read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_0
    .catchall {:try_start_35 .. :try_end_35} :catchall_6

    :catchall_d
    move-exception v2

    :try_start_36
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_d

    :try_start_37
    throw v2

    :cond_49
    move-object/from16 v0, v41

    instance-of v2, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_6

    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;->removeTail(I)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_3
    .catchall {:try_start_38 .. :try_end_38} :catchall_f

    :cond_4a
    :goto_c
    :try_start_39
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_f

    :cond_4b
    :goto_d
    :try_start_3a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z

    if-nez v2, :cond_4c

    move-object/from16 v0, v41

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_50

    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bIsHandover:Z
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6

    :goto_e
    monitor-enter p0

    :try_start_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v2, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    :cond_4d
    monitor-exit p0

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_e

    throw v2

    :catch_3
    move-exception v28

    :try_start_3c
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_4a

    invoke-static/range {v28 .. v28}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_f

    :try_start_3d
    throw v2

    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    monitor-enter v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_6

    :try_start_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_5
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    :goto_f
    :try_start_3f
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v43, v2, v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move-wide/from16 v0, v43

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/http/impl/client/MultiSocketInputStream;->decTime(IJ)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, v2, v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_6

    goto/16 :goto_d

    :catchall_10
    move-exception v2

    :try_start_41
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_10

    :try_start_42
    throw v2

    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_6

    goto/16 :goto_e

    :catchall_11
    move-exception v2

    :try_start_43
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_11

    throw v2

    :catch_4
    move-exception v27

    :try_start_44
    invoke-static/range {v27 .. v27}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_12

    throw v2

    :catch_5
    move-exception v2

    goto :goto_f

    :catch_6
    move-exception v2

    goto/16 :goto_b

    :catch_7
    move-exception v2

    goto/16 :goto_9
.end method

.method public startTryBoth(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    return-void
.end method

.method public switchSocket(I)V
    .locals 2
    .param p1    # I

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested to switch socket id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    :cond_1
    return-void
.end method
