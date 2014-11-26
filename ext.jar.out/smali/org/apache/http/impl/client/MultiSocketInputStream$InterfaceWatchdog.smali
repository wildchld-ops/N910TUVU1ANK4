.class Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;
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
    name = "InterfaceWatchdog"
.end annotation


# instance fields
.field bFileTested:Z

.field final synthetic this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/MultiSocketInputStream;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->bFileTested:Z

    return-void
.end method

.method private testFileCaching()Z
    .locals 11

    const/4 v7, 0x1

    iget-boolean v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->bFileTested:Z

    if-eqz v8, :cond_0

    :goto_0
    return v7

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".sbBuf_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "try to save buffer to file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->createBufferDir()V

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v9, v9, Lorg/apache/http/impl/client/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v0, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    sget-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource check: test buffered file generated "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v1, 0x0

    :goto_1
    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FilterOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v3, 0x0

    :goto_2
    if-eqz v6, :cond_4

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    sget-boolean v8, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource check: test buffered file removed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v6, 0x0

    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->bFileTested:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    :goto_3
    sget-boolean v7, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v7, :cond_5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FilterInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v1, 0x0

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FilterOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v3, 0x0

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto :goto_4

    :catch_2
    move-exception v7

    goto :goto_5

    :catch_3
    move-exception v7

    goto :goto_6

    :catch_4
    move-exception v5

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :cond_9
    move-object v3, v4

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 99

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v5, v6, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$002(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v5

    const-string v6, "SMARTBONDING_MAIN_THREAD_ID"

    new-instance v7, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v6, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resource check: thread checking: start interface watchdog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setup main threadID to be "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main interface target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Secondary interface target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mSchemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    invoke-interface {v5}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v11

    const-string v98, "/"

    const/16 v5, 0x8

    move-object/from16 v0, v98

    invoke-virtual {v11, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v57

    const/4 v5, -0x1

    move/from16 v0, v57

    if-le v0, v5, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v57

    if-ge v0, v5, :cond_1

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v98

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v9, v9, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual/range {v4 .. v11}, Lorg/apache/http/impl/client/CustomHttpClient;->startSBDirectUsage(JJJLjava/lang/String;)Z

    move-result v34

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSBUsage return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2
    if-eqz v34, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/impl/client/CustomHttpClient;->getSBUsageStatus(J)I

    move-result v33

    const/4 v5, 0x2

    move/from16 v0, v33

    if-ne v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSBUsuageStatus return NO bSBStatus for thread "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    const/16 v61, 0x1

    :goto_2
    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v61, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sget v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_8

    const-wide v66, 0x7fffffffffffffffL

    invoke-direct/range {p0 .. p0}, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->testFileCaching()Z

    move-result v5

    if-nez v5, :cond_e

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testFileCaching return false, stop D/B while remain data size  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    const/4 v9, 0x2

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_3
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish interface watchdog with bMultisocket="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_50

    :cond_a
    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v79, v0

    fill-array-data v79, :array_0

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v77, v0

    fill-array-data v77, :array_1

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v78, v0

    fill-array-data v78, :array_2

    const/16 v69, 0x5

    const-wide/16 v36, 0x7d0

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v74, v0

    fill-array-data v74, :array_3

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-nez v5, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v5, :cond_50

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v63, v0

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v96, v0

    const/16 v54, 0x0

    :goto_5
    const/4 v5, 0x2

    move/from16 v0, v54

    if-ge v0, v5, :cond_42

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v5

    aget-wide v7, v5, v54

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v5

    if-nez v5, :cond_40

    const-wide/16 v5, 0x0

    :goto_6
    add-long/2addr v5, v7

    aput-wide v5, v63, v54

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v5

    aget-wide v7, v5, v54

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v5

    if-nez v5, :cond_41

    const-wide/16 v5, 0x0

    :goto_7
    add-long/2addr v5, v7

    aput-wide v5, v96, v54

    add-int/lit8 v54, v54, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x1

    move/from16 v0, v33

    if-ne v0, v5, :cond_d

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSBUsuageStatus return YES bSBStatus for thread "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v5

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v48

    :try_start_4
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_3

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v7

    monitor-enter v7

    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    monitor-exit v7

    goto/16 :goto_3

    :catchall_2
    move-exception v5

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_f
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v8, v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    sub-long v64, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-lez v5, :cond_10

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v5, v5

    cmp-long v5, v64, v5

    if-lez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    monitor-exit v7

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->bBothInfAvail(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    int-to-long v0, v5

    move-wide/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    const-wide/16 v8, 0x2

    div-long v85, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/CustomHttpClient;->getSmartBondingData(I)[J

    move-result-object v52

    const-wide/16 v80, 0x64

    const-wide/16 v59, 0x0

    if-eqz v52, :cond_12

    move-object/from16 v0, v52

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_12

    const/4 v5, 0x1

    aget-wide v80, v52, v5

    const/4 v5, 0x0

    aget-wide v59, v52, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v59, v5

    if-ltz v5, :cond_11

    const-wide/16 v5, 0x1

    cmp-long v5, v59, v5

    if-lez v5, :cond_12

    :cond_11
    const-wide/16 v59, 0x0

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-wide/from16 v0, v80

    long-to-double v8, v0

    const-wide/high16 v12, 0x4059000000000000L

    div-double/2addr v8, v12

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1002(Lorg/apache/http/impl/client/MultiSocketInputStream;D)D

    sget-boolean v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->ENABLE_EXTREME_CONDITION_THREAD:Z

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const-wide v8, 0x3fb999999999999aL

    const-wide/high16 v12, 0x4024000000000000L

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1002(Lorg/apache/http/impl/client/MultiSocketInputStream;D)D

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v59, v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L

    add-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v12

    sget-wide v16, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v12, v12, v16

    sub-double/2addr v8, v12

    div-double/2addr v5, v8

    double-to-long v0, v5

    move-wide/from16 v85, v0

    :goto_8
    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET:I

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    sget v10, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET:I

    int-to-long v12, v10

    sub-long/2addr v8, v12

    move-wide/from16 v0, v85

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v85

    :cond_13
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before check exetThread, ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taillen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxTailLen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v72

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oriOffset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", B_Ratio_BUF_LTE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_14
    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET:I

    int-to-long v5, v5

    cmp-long v5, v85, v5

    if-gez v5, :cond_17

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tail length is too small, exit watchdog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v85

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_15
    monitor-exit v7

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v8

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v8

    const-wide/high16 v12, 0x3ff0000000000000L

    add-double/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L

    sget-wide v16, Lorg/apache/http/impl/client/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v12, v12, v16

    sub-double/2addr v8, v12

    div-double/2addr v5, v8

    double-to-long v0, v5

    move-wide/from16 v85, v0

    goto/16 :goto_8

    :cond_17
    sget-boolean v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->ENABLE_EXTREME_CONDITION_THREAD:Z

    if-eqz v5, :cond_1b

    cmp-long v5, v85, v66

    if-gez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mAlgoType:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-wide/from16 v0, v66

    move-wide/from16 v2, v85

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1102(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    add-long/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    sub-long v14, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    add-long/2addr v5, v8

    const-wide/16 v8, 0x1

    sub-long v22, v5, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v19, v5, 0x2

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start exetThread, interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1000(Lorg/apache/http/impl/client/MultiSocketInputStream;)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", taillen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oriOffset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    new-instance v12, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/16 v16, 0x0

    sub-long v8, v22, v14

    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    long-to-int v0, v8

    move/from16 v17, v0

    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    const/16 v20, 0x1

    invoke-direct/range {v12 .. v20}, Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;JIILjava/util/LinkedList;II)V

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    invoke-static {v5, v12}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1402(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;)Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mInBuffer:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    new-array v6, v6, [B

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1602(Lorg/apache/http/impl/client/MultiSocketInputStream;[B)[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput-byte v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    new-instance v17, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtDBuf:Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;

    move-result-object v24

    const/16 v25, 0x0

    move-wide/from16 v20, v14

    invoke-direct/range {v17 .. v25}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;IJJLorg/apache/http/impl/client/MultiSocketInputStream$DataBuffer;Z)V

    move-object/from16 v0, v17

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1702(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    new-instance v91, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ":ExtremeCondition_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # operator++ for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sThreadID:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1808()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v91

    invoke-direct {v0, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resource check: finish reading startup data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v8, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v8, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", now ExtremeThread created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Main socket read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v8, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v8, 0x1

    sub-long v8, v14, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ExtremeThread read from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v5

    const/16 v6, 0x1388

    invoke-interface {v5, v6}, Lorg/apache/http/conn/ManagedClientConnection;->setSocketTimeout(I)V

    invoke-virtual/range {v91 .. v91}, Ljava/lang/Thread;->start()V

    :cond_1a
    :goto_9
    monitor-exit v7

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesA:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2202(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    const-wide/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/CustomHttpClient;->createClientRequestDirector(Lorg/apache/http/HttpRequest;)Lorg/apache/http/impl/client/DefaultRequestDirector;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v24

    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget v6, v6, Lorg/apache/http/impl/client/MultiSocketInputStream;->mDestIPVer:I

    invoke-static {v5, v6}, Lorg/apache/http/impl/client/CustomHttpClient;->getLocalAddrEx(II)Ljava/net/InetAddress;

    move-result-object v32

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got local interface ip address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v32, :cond_24

    invoke-virtual/range {v32 .. v32}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->getProxy(ILorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v8}, Lorg/apache/http/impl/client/DefaultRequestDirector;->setParameter(Lorg/apache/http/params/HttpParams;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    aget-object v25, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    aget-object v26, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpContext:Lorg/apache/http/protocol/HttpContext;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v0, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    const-wide/16 v8, 0x1

    add-long v30, v5, v8

    invoke-virtual/range {v24 .. v32}, Lorg/apache/http/impl/client/DefaultRequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;JJLjava/net/InetAddress;)Lorg/apache/http/HttpResponse;

    move-result-object v83

    const-wide/16 v41, 0x0

    invoke-interface/range {v83 .. v83}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesB:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2602(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesA:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesB:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2600(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2702(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    const-string v5, "Content-Range"

    move-object/from16 v0, v83

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v82

    if-eqz v82, :cond_26

    invoke-interface/range {v82 .. v82}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    const-string v5, "/"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v58

    const/4 v5, -0x1

    move/from16 v0, v58

    if-eq v0, v5, :cond_25

    add-int/lit8 v5, v58, 0x1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLengthRangeRequest:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2800(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    cmp-long v5, v41, v5

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    aget-object v8, v8, v9

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    aget-object v8, v8, v9

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    aget-object v8, v8, v9

    aput-object v8, v5, v6

    :goto_c
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The HttpTarget after sample request is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_1d
    invoke-interface/range {v83 .. v83}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v84

    invoke-interface/range {v83 .. v83}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v50

    const/16 v5, 0xce

    move/from16 v0, v84

    if-eq v0, v5, :cond_1e

    const/16 v5, 0xc8

    move/from16 v0, v84

    if-ne v0, v5, :cond_1f

    :cond_1e
    invoke-interface/range {v50 .. v50}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v8, 0x2

    cmp-long v5, v5, v8

    if-eqz v5, :cond_29

    :cond_1f
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server Response not proper, got response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v84

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_20
    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_21

    const-string v5, "Interface Watchdog thread will exit and Range Request thread will not start"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_21
    :goto_d
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getConnectionTime()J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v44

    :try_start_9
    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v5, :cond_22

    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    const/16 v24, 0x0

    :cond_22
    :goto_e
    if-nez v61, :cond_2c

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_23

    const-string v5, "range request not supported or exception while connection, exit watchdog"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_23
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_3

    :cond_24
    :try_start_a
    const-string v5, "null"

    goto/16 :goto_a

    :cond_25
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v8, v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->mOriOffset:J

    add-long v41, v5, v8

    goto/16 :goto_b

    :cond_26
    invoke-interface/range {v53 .. v53}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v41

    goto/16 :goto_b

    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRemoteAddress:[Ljava/net/InetAddress;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2900(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Ljava/net/InetAddress;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    move-object/from16 v0, v24

    iget-object v8, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v8}, Lorg/apache/http/conn/ManagedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpRequest:[Lorg/apache/http/HttpRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2400(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpRequest;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v8

    aput-object v8, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mHttpHost:[Lorg/apache/http/HttpHost;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/HttpHost;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->getHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v8

    aput-object v8, v5, v6
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_c

    :catch_1
    move-exception v49

    :try_start_b
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_28

    invoke-static/range {v49 .. v49}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    :cond_28
    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v5, :cond_22

    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/16 v24, 0x0

    goto/16 :goto_e

    :cond_29
    const/16 v61, 0x1

    :try_start_d
    const-string v5, "Connection"

    move-object/from16 v0, v83

    invoke-interface {v0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    if-nez v40, :cond_2b

    const/4 v5, 0x0

    :goto_f
    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v6, v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3002(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterfaceWatchdog: Reconnect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_d

    :catchall_3
    move-exception v5

    :try_start_e
    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v6, :cond_2a

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/apache/http/impl/client/DefaultRequestDirector;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v6}, Lorg/apache/http/conn/ManagedClientConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/impl/client/DefaultRequestDirector;->releaseConnection()V

    const/16 v24, 0x0

    :cond_2a
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_2b
    :try_start_f
    invoke-interface/range {v40 .. v40}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Close"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-result v5

    goto :goto_f

    :cond_2c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXTREME_TIME_RATIO:I

    int-to-long v8, v8

    mul-long/2addr v5, v8

    cmp-long v5, v5, v44

    if-gez v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sub-long v5, v44, v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_2e

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting the interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because interface connect time is slow. mMainSocketConnectTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    aget-wide v8, v6, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentConnectTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2d
    monitor-exit v7

    goto/16 :goto_3

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXTREME_TIME_RATIO:I

    int-to-long v8, v8

    mul-long v8, v8, v44

    cmp-long v5, v5, v8

    if-lez v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sub-long v5, v5, v44

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/conn/ManagedClientConnection;)Lorg/apache/http/conn/ManagedClientConnection;

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting the interface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because interface connect time is slow. mMainSocketConnectTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    aget-wide v8, v6, v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentConnectTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOtherInterface:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2500(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    monitor-exit v7

    goto/16 :goto_3

    :cond_30
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "both interface connected while bytesRemaining="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    sub-long/2addr v5, v8

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXPECTSIZE:I

    int-to-long v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-wide v8

    add-long v38, v5, v8

    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInputStream:Ljava/io/InputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v5, v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->EXPECTSIZE:I

    int-to-long v8, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bytesC:J
    invoke-static {v10}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-result-wide v8

    add-long v38, v5, v8

    :cond_32
    :goto_10
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    sub-long v8, v8, v38

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1102(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    sget v97, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_MULTIRAT_BLOCK_SIZE:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsConnectionClosedAfterEveryRequest:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV_CON_CLOSED:I

    int-to-long v8, v8

    div-long/2addr v5, v8

    long-to-int v0, v5

    move/from16 v97, v0

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE_CON_CLOSED:I

    move/from16 v0, v97

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v97

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_SIZE_FOR_MULTISOCKET_CON_CLOSE:I

    move/from16 v0, v97

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v97

    const/4 v5, 0x4

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3502(I)I

    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v97

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRestBlockSize:I
    invoke-static {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3602(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v97

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$902(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_3d

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v70

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const-wide/16 v8, 0x2

    div-long v8, v70, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    int-to-long v12, v6

    div-long/2addr v8, v12

    long-to-int v6, v8

    const/4 v8, 0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3500()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMaxBlockNumber:I
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3702(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mContentLength:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$400(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v8, v12

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v5, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1202(Lorg/apache/http/impl/client/MultiSocketInputStream;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v5, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-nez v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v5, v8

    :goto_12
    long-to-int v0, v5

    move/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    int-to-long v8, v8

    rem-long/2addr v5, v8

    long-to-int v0, v5

    move/from16 v62, v0

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_LAST_CHUNK_SIZE_FOR_MERGE:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v62

    if-gt v0, v5, :cond_34

    if-lez v62, :cond_34

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The no of chunks initially "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new no of chunks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v68, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_33
    add-int/lit8 v68, v68, -0x1

    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v68

    new-array v6, v0, [B

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1602(Lorg/apache/http/impl/client/MultiSocketInputStream;[B)[B

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total chunks = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_35
    const/16 v54, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v54

    if-ge v0, v5, :cond_38

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v5

    const/4 v6, 0x0

    aput-byte v6, v5, v54

    add-int/lit8 v54, v54, 0x1

    goto :goto_13

    :catch_2
    move-exception v51

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_32

    invoke-static/range {v51 .. v51}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    sget v8, Lorg/apache/http/impl/client/MultiSocketInputStream;->MULTIRAT_BLOCK_DIV:I

    int-to-long v8, v8

    div-long/2addr v5, v8

    long-to-int v0, v5

    move/from16 v97, v0

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MAX_MULTIRAT_BLOCK_SIZE:I

    move/from16 v0, v97

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v97

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_MULTIRAT_BLOCK_SIZE:I

    move/from16 v0, v97

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v97

    const/16 v5, 0x8

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sMaxBlock:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3502(I)I

    goto/16 :goto_11

    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockSize:I
    invoke-static {v8}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$900(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v5, v8

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    goto/16 :goto_12

    :cond_38
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "block status is initialized with size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockStatus:[B
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1600(Lorg/apache/http/impl/client/MultiSocketInputStream;)[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v5, v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3902(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_3a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start socket thread for interfaces "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mOffset:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1200(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_3a
    const/4 v5, 0x0

    aget-wide v5, v52, v5

    const-wide/16 v8, -0x1

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3b

    const/4 v5, 0x0

    aget-wide v5, v52, v5

    :goto_14
    long-to-int v5, v5

    sput v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->DEFAULT_INTERFACE_FOR_INITIAL_CHUNK:I

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Thread;

    move-object/from16 v91, v0

    const/16 v54, 0x0

    :goto_15
    const/4 v5, 0x2

    move/from16 v0, v54

    if-ge v0, v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v5

    new-instance v6, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v54

    invoke-direct {v6, v8, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;-><init>(Lorg/apache/http/impl/client/MultiSocketInputStream;I)V

    aput-object v6, v5, v54

    new-instance v5, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRequestHandlers:[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4000(Lorg/apache/http/impl/client/MultiSocketInputStream;)[Lorg/apache/http/impl/client/MultiSocketInputStream$RangeRequest;

    move-result-object v6

    aget-object v6, v6, v54

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v91, v54

    add-int/lit8 v54, v54, 0x1

    goto :goto_15

    :cond_3b
    const-wide/16 v5, 0x0

    goto :goto_14

    :cond_3c
    const/16 v54, 0x0

    :goto_16
    const/4 v5, 0x2

    move/from16 v0, v54

    if-ge v0, v5, :cond_1a

    aget-object v5, v91, v54

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    add-int/lit8 v54, v54, 0x1

    goto :goto_16

    :cond_3d
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rest size too small to start Multi socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesForMultiSocket:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1100(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_9

    :cond_3e
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBlockManager:Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$800(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$BlockManager;

    move-result-object v5

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :cond_3f
    :goto_17
    :try_start_14
    monitor-exit v7

    goto/16 :goto_2

    :catch_3
    move-exception v48

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_3f

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_17

    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v5

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v5

    goto/16 :goto_6

    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v5

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v5

    goto/16 :goto_7

    :cond_42
    const/4 v5, 0x0

    aget-wide v5, v79, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_51

    const/16 v54, 0x0

    :goto_18
    const/4 v5, 0x2

    move/from16 v0, v54

    if-ge v0, v5, :cond_43

    aget-wide v5, v96, v54

    aput-wide v5, v79, v54

    aget-wide v5, v63, v54

    aput-wide v5, v77, v54

    add-int/lit8 v54, v54, 0x1

    goto :goto_18

    :cond_43
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_44

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[speed calc detail]init speed data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v77, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v79, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v77, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v79, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_44
    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4800(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$602(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1900(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2000(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v5

    if-eqz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->childIS:Lorg/apache/http/impl/client/TwoChunkInputStream;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4300(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/TwoChunkInputStream;

    move-result-object v5

    if-nez v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4900(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mRangeRequestSuccess:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4b

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_46

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extremThread running, main socket reading from socket, remain bytes = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mBytesRemaining:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$700(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketInterface:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$300(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v55

    add-int/lit8 v5, v55, 0x1

    rem-int/lit8 v56, v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v5

    aget-wide v9, v5, v55

    sub-long v92, v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v5

    aget-wide v9, v5, v56

    sub-long v94, v7, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    int-to-long v7, v5

    cmp-long v5, v92, v7

    if-ltz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v87

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v89

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current speed is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v87

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v89

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " threshold ratio is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5100()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_47
    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5100()I

    move-result v5

    if-ltz v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    int-to-long v7, v5

    cmp-long v5, v94, v7

    if-ltz v5, :cond_48

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5100()I

    move-result v5

    int-to-long v7, v5

    mul-long v7, v7, v89

    cmp-long v5, v87, v7

    if-lez v5, :cond_48

    const-wide/16 v7, 0x0

    cmp-long v5, v87, v7

    if-lez v5, :cond_48

    const-wide/16 v7, 0x0

    cmp-long v5, v89, v7

    if-gtz v5, :cond_49

    :cond_48
    const-wide/16 v7, 0xa

    cmp-long v5, v89, v7

    if-gtz v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5000(Lorg/apache/http/impl/client/MultiSocketInputStream;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-long v7, v5

    cmp-long v5, v94, v7

    if-ltz v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4200(Lorg/apache/http/impl/client/MultiSocketInputStream;)[J

    move-result-object v5

    aget-wide v7, v5, v56

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_5b

    :cond_49
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_4a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now stop the interface "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and swtich sec interface to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4702(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsReadFromBuffer:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mIsMultiSocketStarted:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3802(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1902(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v5

    const/4 v7, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->access$5302(Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mExtThread:Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$1700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream$ExtremeConditionThread;->closeConnection()V

    if-nez v55, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    const/4 v9, -0x1

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    :cond_4b
    :goto_1a
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :cond_4c
    const-wide/16 v75, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-wide v7, v7, Lorg/apache/http/impl/client/MultiSocketInputStream;->mLastReadTime:J

    sub-long v75, v5, v7

    :cond_4d
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_4e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nonReadTime till now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v75

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bAppIsReadingNow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_4e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-nez v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v5, :cond_4f

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v5, v5

    cmp-long v5, v75, v5

    if-lez v5, :cond_5d

    :cond_4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close input stream since app is not reading data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v75

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_50
    :goto_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainRequest:Lorg/apache/http/HttpRequest;

    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v5

    if-nez v5, :cond_60

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-boolean v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    if-nez v5, :cond_60

    :try_start_16
    monitor-enter v4
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4

    const-wide/16 v5, 0x3e8

    :try_start_17
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto :goto_1b

    :catchall_4
    move-exception v5

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v5
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4

    :catch_4
    move-exception v48

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_50

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_51
    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v46, v0

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v47, v0

    const/4 v5, 0x2

    new-array v0, v5, [J

    move-object/from16 v43, v0

    const/16 v54, 0x0

    :goto_1c
    const/4 v5, 0x2

    move/from16 v0, v54

    if-ge v0, v5, :cond_53

    aget-wide v5, v63, v54

    aget-wide v7, v77, v54

    sub-long/2addr v5, v7

    aput-wide v5, v46, v54

    aget-wide v5, v96, v54

    aget-wide v7, v79, v54

    sub-long/2addr v5, v7

    aput-wide v5, v47, v54

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    aget-wide v6, v46, v54

    aget-wide v8, v47, v54

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/http/impl/client/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v5

    aput-wide v5, v43, v54

    aget-wide v5, v96, v54

    aput-wide v5, v79, v54

    aget-wide v5, v63, v54

    aput-wide v5, v77, v54

    aget-wide v5, v46, v54

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_52

    aget v5, v74, v54

    add-int/lit8 v5, v5, 0x1

    aput v5, v74, v54

    :goto_1d
    add-int/lit8 v54, v54, 0x1

    goto :goto_1c

    :cond_52
    const/4 v5, 0x0

    aput v5, v74, v54

    goto :goto_1d

    :cond_53
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[speed calc detail] reportSBUsage current speed:\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v43, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t:\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v43, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v46, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v47, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v46, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-wide v6, v47, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t noDataCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v74, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v74, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_56

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_56

    const/4 v5, 0x0

    aget v5, v74, v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_56

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->bTwoInfDownloading()Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_58

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_58

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    const/4 v8, -0x3

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    :cond_55
    :goto_1e
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v74, v5

    :cond_56
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4500(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    aget v5, v74, v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # invokes: Lorg/apache/http/impl/client/MultiSocketInputStream;->bTwoInfDownloading()Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4600(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-eqz v5, :cond_59

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4700(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_59

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v6}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v6

    const/4 v8, -0x4

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    :cond_57
    :goto_1f
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v74, v5

    goto/16 :goto_19

    :cond_58
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_55

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noDatacount[0] goes to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v74, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but only 1 inf is using now"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_1e

    :cond_59
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_57

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noDataCount[1] goes to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v74, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but only 1 inf is using now"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto :goto_1f

    :cond_5a
    :try_start_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    const/4 v9, -0x2

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    goto/16 :goto_1a

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v5

    :cond_5b
    :try_start_1a
    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200()I

    move-result v5

    if-ltz v5, :cond_4b

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5200()I

    move-result v5

    int-to-long v7, v5

    mul-long v7, v7, v87

    cmp-long v5, v89, v7

    if-lez v5, :cond_4b

    const-wide/16 v7, 0x0

    cmp-long v5, v87, v7

    if-lez v5, :cond_4b

    const-wide/16 v7, 0x0

    cmp-long v5, v89, v7

    if-lez v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x1

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$4702(Lorg/apache/http/impl/client/MultiSocketInputStream;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    move/from16 v0, v56

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v5, v0}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$3302(Lorg/apache/http/impl/client/MultiSocketInputStream;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2100(Lorg/apache/http/impl/client/MultiSocketInputStream;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->closeConnQuiet(Lorg/apache/http/conn/ManagedClientConnection;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v7, 0x0

    # setter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainManagedConn:Lorg/apache/http/conn/ManagedClientConnection;
    invoke-static {v5, v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$2102(Lorg/apache/http/impl/client/MultiSocketInputStream;Lorg/apache/http/conn/ManagedClientConnection;)Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v56, :cond_5c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    const/4 v9, -0x1

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I

    :goto_20
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now stop the interface "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " and switch main interface to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_5c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    iget-object v5, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->customHttpClient:Lorg/apache/http/impl/client/CustomHttpClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$000(Lorg/apache/http/impl/client/MultiSocketInputStream;)J

    move-result-wide v7

    const/4 v9, -0x2

    invoke-virtual {v5, v7, v8, v9}, Lorg/apache/http/impl/client/CustomHttpClient;->stopSBUsageWithReason(JI)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_20

    :cond_5d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    # getter for: Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppIsReadingNow:Z
    invoke-static {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->access$5400(Lorg/apache/http/impl/client/MultiSocketInputStream;)Z

    move-result v5

    if-nez v5, :cond_5f

    sget v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->WAIT_FOR_RANGEREQUEST_TIME_OUT:I

    add-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v5, v75, v5

    if-lez v5, :cond_5f

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_5e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop reading data for second chunks for APP nonReadTime is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v75

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->bAppReading:Z

    :cond_5f
    :try_start_1b
    monitor-enter v4
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5

    const-wide/16 v5, 0x3e8

    :try_start_1c
    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v4

    goto/16 :goto_4

    :catchall_6
    move-exception v5

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :try_start_1d
    throw v5
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_5

    :catch_5
    move-exception v48

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_b

    invoke-static/range {v48 .. v48}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_60
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/http/impl/client/MultiSocketInputStream;->mFinished:Z

    :try_start_1e
    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_61

    const-string v5, "Close is called from Interface Watchdog"

    invoke-static {v5}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/String;)V

    :cond_61
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/MultiSocketInputStream$InterfaceWatchdog;->this$0:Lorg/apache/http/impl/client/MultiSocketInputStream;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/MultiSocketInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_6

    :cond_62
    :goto_21
    invoke-static {}, Lorg/apache/http/impl/client/CustomHttpClient;->flushLogs()V

    return-void

    :catch_6
    move-exception v51

    sget-boolean v5, Lorg/apache/http/impl/client/CustomHttpClient;->APACHE_HTTP_DBG:Z

    if-eqz v5, :cond_62

    invoke-static/range {v51 .. v51}, Lorg/apache/http/impl/client/CustomHttpClient;->log(Ljava/lang/Throwable;)V

    goto :goto_21

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
