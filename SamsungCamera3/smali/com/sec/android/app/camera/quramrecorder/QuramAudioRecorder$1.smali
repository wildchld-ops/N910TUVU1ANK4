.class Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;
.super Ljava/lang/Thread;
.source "QuramAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->startRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteAllRecorde()V

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/quramsoft/qdio/QdioRecorder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/quramsoft/qdio/QdioRecorder;->init(I)Z

    const-wide/16 v7, 0xc8

    iget-object v9, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization_duration:J
    invoke-static {v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$100(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v9

    div-long/2addr v7, v9

    long-to-int v6, v7

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    new-array v8, v6, [I

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$202(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;[I)[I

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/quramsoft/qdio/QdioRecorder;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->qrecorder:Lcom/quramsoft/qdio/QdioRecorder;
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$000(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Lcom/quramsoft/qdio/QdioRecorder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/quramsoft/qdio/QdioRecorder;->start()Z

    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$300(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$400(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v7

    const-wide/16 v9, 0x32

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    const-wide/16 v7, 0xa

    :try_start_1
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const-string v7, "QURAM"

    const-string v8, "end Recoder"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_5
    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_4
    throw v7

    :cond_1
    :try_start_6
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$500(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_t:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$402(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->time_s:J
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$502(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;J)J

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->deleteOverTimeFrame()V

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readRecorde()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->isRunning:Z
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$302(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # invokes: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->releaseRecorder()V
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$900(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_6

    const/4 v1, 0x0

    :goto_6
    :try_start_8
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[B

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x8

    iget-object v8, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBuffer:[B
    invoke-static {v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$700(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[B

    move-result-object v8

    aget-byte v8, v8, v2

    or-int/2addr v7, v8

    int-to-short v4, v7

    add-int/lit8 v2, v2, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->readAudioStreamBufferSize:I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$600(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    int-to-float v7, v7

    div-float/2addr v3, v7

    const/high16 v7, 0x42480000

    sub-float/2addr v3, v7

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_5

    const/4 v3, 0x0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    # getter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->visualization:[I
    invoke-static {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$200(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;)[I

    move-result-object v7

    float-to-int v8, v3

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    const/4 v8, 0x0

    # setter for: Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->segIdx:I
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->access$802(Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;I)I

    iget-object v7, p0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder$1;->this$0:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->addRecorde()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v7, "QURAM"

    const-string v8, "releaseRecorder failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v8, "QURAM"

    const-string v9, "releaseRecorder failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method
