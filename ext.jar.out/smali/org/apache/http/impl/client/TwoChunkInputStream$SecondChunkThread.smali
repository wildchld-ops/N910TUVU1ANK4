.class Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;
.super Ljava/lang/Object;
.source "TwoChunkInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/TwoChunkInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecondChunkThread"
.end annotation


# instance fields
.field private bDeprecated:Z

.field private bTryBoth:Z

.field dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

.field end:J

.field private input:Ljava/io/InputStream;

.field private locker:Ljava/lang/Object;

.field private mSecThreadCreationResult:I

.field private mStartReadHeaderTime:J

.field private secCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

.field private secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

.field private sockID:I

.field start:J

.field private switchToSocketID:I

.field final synthetic this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/TwoChunkInputStream;IJJLorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)V
    .locals 3
    .param p2    # I
    .param p3    # J
    .param p5    # J
    .param p7    # Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    iput-boolean v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    iput-boolean v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    const/16 v0, -0x64

    iput v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    iput p2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    iput-wide p3, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    iput-wide p5, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    iput-object p7, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    new-instance v0, Lorg/apache/http/impl/client/CustomHttpClient;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {p1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$100(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

    return-void
.end method


# virtual methods
.method protected closeSocketAndStreams()V
    .locals 3

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close sec input stream in depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1100(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v0, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-static {v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    return-void
.end method

.method public createTwoChunkInSec(Z)V
    .locals 26
    .param p1    # Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    iget-boolean v1, v1, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v2, "createTwoChunkInSec: session is finished"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-gez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v1

    if-nez v1, :cond_6

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk0 is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mLength:J
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$600(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mStart:J
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$700(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v5, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v25, v0

    new-instance v1, Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mManConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$800(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v10}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$100(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;
    invoke-static {v11}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$900(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v12}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I
    invoke-static/range {v17 .. v17}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1100(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static/range {v18 .. v18}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v19, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mFullConSize:J
    invoke-static/range {v19 .. v19}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1200(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v21, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeOut:I
    invoke-static/range {v21 .. v21}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1300(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->getHasReadLen()J

    move-result-wide v23

    move/from16 v22, p1

    invoke-direct/range {v1 .. v24}, Lorg/apache/http/impl/client/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/ManagedClientConnection;IIJJ[Lorg/apache/http/HttpRequest;[Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;JJILorg/apache/http/impl/client/MultiSocketInputStream;JIZJ)V

    move-object/from16 v0, v25

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$502(Lorg/apache/http/impl/client/TwoChunkInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getNeedToExitSecThread()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    if-nez v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_7

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v2, "Need to start another sec chunk input"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual/range {v6 .. v11}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->push(Ljava/io/InputStream;JJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->startRun()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    sget-boolean v1, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in sec chunk create child input = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const/4 v2, 0x0

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v1, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$502(Lorg/apache/http/impl/client/TwoChunkInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public getSocketID()I
    .locals 1

    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    return v0
.end method

.method public run()V
    .locals 40

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is SecondChunkThread_depth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1100(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", start to download with socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v23, v2, v4

    const-wide/16 v36, 0x0

    const/16 v27, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_1

    cmp-long v2, v36, v23

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const/4 v3, 0x0

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->bSecThreadExisted:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1902(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    sget v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    add-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const/4 v3, 0x1

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$2000(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)V

    :cond_2
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is SecondChunkThread_depth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDepth:I
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1100(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exit from socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v2, 0x2

    :try_start_3
    new-array v0, v2, [Lorg/apache/http/HttpHost;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$900(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secCustomHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$900(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v3

    aput-object v3, v17, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mHost:[Lorg/apache/http/HttpHost;
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$900(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$100(Lorg/apache/http/impl/client/TwoChunkInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v5}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mFullConSize:J
    invoke-static {v10}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1200(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v14}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v14

    iget-wide v14, v14, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v16, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static/range {v16 .. v16}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriMainInterface:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static/range {v18 .. v18}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    move/from16 v18, v0

    invoke-virtual/range {v2 .. v18}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute([Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJJIZJI[Lorg/apache/http/HttpHost;I)Lorg/apache/http/HttpResponse;

    move-result-object v27

    if-nez v27, :cond_9

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot connect to server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :catch_0
    move-exception v25

    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_c

    throw v25

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catch_1
    move-exception v33

    :try_start_7
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_6

    invoke-static/range {v33 .. v33}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :goto_3
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v38, v2, v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mTimeForDownload:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1800(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move-wide/from16 v0, v38

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->decTime(IJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_7
    monitor-enter p0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v2

    :cond_9
    :try_start_c
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const/4 v3, 0x1

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->bFailedInSecChunk:Z
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1402(Lorg/apache/http/impl/client/TwoChunkInputStream;Z)Z

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "unexpected HTTP response in ExtremThread"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_a
    monitor-enter p0

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_b
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v2

    :cond_c
    :try_start_e
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "childIS is created before this exception"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_e
    :try_start_f
    monitor-enter p0
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const-wide/16 v2, -0x1

    :try_start_10
    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "thread is deprecated, break"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    monitor-enter p0

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_10
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v2

    :cond_11
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/ManagedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v3, v4}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->secDirector:Lorg/apache/http/impl/client/DefaultRequestDirector;

    iget-object v2, v2, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new input stream in sec chunk reconnect input = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1500(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1500(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    :cond_14
    :goto_5
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_15
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz v2, :cond_1b

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "thread is deprecated2, break"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :cond_16
    monitor-enter p0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_17
    monitor-exit p0

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v2

    :cond_18
    const/4 v2, 0x1

    :try_start_15
    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    goto/16 :goto_4

    :catchall_5
    move-exception v2

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    throw v2
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :catchall_6
    move-exception v2

    monitor-enter p0

    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_19
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    throw v2

    :cond_1a
    :try_start_18
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "childIS is created before this connection"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto :goto_5

    :cond_1b
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_23

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected for socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", need to use this socket to get actual data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1600(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v31

    const-wide/16 v2, 0x0

    cmp-long v2, v31, v2

    if-nez v2, :cond_1f

    const-wide v34, 0x7fffffffffffffffL

    :goto_6
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket0 speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v31

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeForRemainBy0="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_1d
    const-wide/16 v2, 0x1388

    cmp-long v2, v34, v2

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    div-long/2addr v3, v5

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v2, v3, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$402(Lorg/apache/http/impl/client/TwoChunkInputStream;J)J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v2, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;-><init>(Lorg/apache/http/impl/client/TwoChunkInputStream;JJ)V

    # setter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;
    invoke-static {v8, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1702(Lorg/apache/http/impl/client/TwoChunkInputStream;Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;)Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mDBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1700(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long v23, v2, v4

    const-wide/16 v36, 0x0

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "do reconnect"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_1e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "please reconnect to get actual data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    div-long v34, v2, v31

    goto/16 :goto_6

    :cond_20
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v3, "small data left, ignore me, exit thread"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_21
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    monitor-enter p0

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_22
    monitor-exit p0

    goto/16 :goto_1

    :catchall_7
    move-exception v2

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    throw v2

    :cond_23
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1500(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1500(Lorg/apache/http/impl/client/TwoChunkInputStream;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    :cond_24
    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondChunkThread starts to read data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_25
    sget v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_BUFFERLEN:I

    new-array v0, v2, [B

    move-object/from16 v19, v0

    :cond_26
    cmp-long v2, v36, v23

    if-gez v2, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->createTwoChunkInSec(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz v2, :cond_2a

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secchunk Thread deprecated at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :cond_28
    :goto_7
    monitor-enter p0

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    :cond_29
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    throw v2

    :cond_2a
    :try_start_1d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchSocket(I)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_7

    :cond_2b
    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v28, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v3, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :cond_2c
    :goto_8
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_30

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    const-string v4, "APP not reading, waiting"

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :cond_2d
    :try_start_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto :goto_8

    :catch_2
    move-exception v25

    :try_start_21
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2c

    invoke-static/range {v25 .. v25}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_9
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :try_start_22
    throw v2
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    :catch_3
    move-exception v26

    :try_start_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketTimeoutException Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->disconnCount:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_2e
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting block: buf_offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bFinished="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v4

    iget-boolean v4, v4, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_2f
    throw v26
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :cond_30
    :try_start_24
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :cond_31
    :try_start_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_32

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_32

    move-object/from16 v0, v19

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    move-object/from16 v0, v19

    array-length v3, v0

    sub-int v3, v3, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v28

    if-lez v28, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->parentIS:Lorg/apache/http/impl/client/MultiSocketInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$000(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v2, :cond_32

    add-int v20, v20, v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_34

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    const/16 v3, -0x64

    if-ne v2, v3, :cond_32

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now it is time to stop this thread, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$300(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$400(Lorg/apache/http/impl/client/TwoChunkInputStream;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", buf_offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :cond_32
    :goto_9
    if-lez v20, :cond_3c

    :try_start_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v3
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v4, v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;->push(I[BI)J

    move-result-wide v21

    const-wide/16 v4, -0x1

    cmp-long v2, v21, v4

    if-nez v2, :cond_37

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This block shall be read by another socket, this socket is slow: block[0], socket["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_33
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Data is not pushed to buffer may be socket has changed."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_a
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :try_start_28
    throw v2
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    :cond_34
    move/from16 v0, v20

    int-to-long v2, v0

    add-long v2, v2, v36

    cmp-long v2, v2, v23

    if-nez v2, :cond_35

    :try_start_29
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full data read, break: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_35
    move/from16 v0, v20

    int-to-long v2, v0

    add-long v2, v2, v36

    cmp-long v2, v2, v23

    if-lez v2, :cond_31

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Full data read, break: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_3
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    :cond_36
    sub-long v2, v23, v36

    long-to-int v0, v2

    move/from16 v20, v0

    goto/16 :goto_9

    :cond_37
    const-wide/16 v4, 0x0

    cmp-long v2, v21, v4

    if-gez v2, :cond_39

    const-wide/16 v4, -0x1

    mul-long v4, v4, v21

    :try_start_2a
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_38
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_39
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    add-long v4, v4, v21

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->start:J

    add-long v36, v36, v21

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->mSocket0:I
    invoke-static {v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$1600(Lorg/apache/http/impl/client/TwoChunkInputStream;)I

    move-result v4

    if-eq v2, v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    # getter for: Lorg/apache/http/impl/client/TwoChunkInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v2}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$500(Lorg/apache/http/impl/client/TwoChunkInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/TwoChunkInputStream;->setTime(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move/from16 v0, v20

    int-to-long v5, v0

    invoke-virtual {v2, v4, v5, v6}, Lorg/apache/http/impl/client/TwoChunkInputStream;->incByte(IJ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    :cond_3a
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->dBuf:Lorg/apache/http/impl/client/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    :goto_a
    :try_start_2c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    :try_start_2d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    if-ltz v2, :cond_26

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to swtich to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_3b
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to swtich to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    const/4 v2, -0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_3e

    cmp-long v2, v36, v23

    if-gez v2, :cond_3e

    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondChunkThread read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_3d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondChunkThread read body Exception: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    sget-boolean v2, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondChunkThread read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_3f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecondChunkThread read body Exception2: totallen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v36

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bytesToRead= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    :catchall_b
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    :try_start_2f
    throw v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    :catchall_c
    move-exception v2

    :try_start_30
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    throw v2

    :catch_4
    move-exception v25

    :try_start_31
    invoke-static/range {v25 .. v25}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_d
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    throw v2

    :catch_5
    move-exception v2

    goto/16 :goto_3

    :catch_6
    move-exception v2

    goto/16 :goto_a
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 0
    .param p1    # Ljava/io/InputStream;

    iput-object p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    return-void
.end method

.method public startTryBoth(I)V
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    return-void
.end method

.method public switchSocket(I)V
    .locals 3
    .param p1    # I

    sget-boolean v0, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->this$0:Lorg/apache/http/impl/client/TwoChunkInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested to switch socket id from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/apache/http/impl/client/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/http/impl/client/TwoChunkInputStream;->access$200(Lorg/apache/http/impl/client/TwoChunkInputStream;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->sockID:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lorg/apache/http/impl/client/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    :cond_1
    return-void
.end method
