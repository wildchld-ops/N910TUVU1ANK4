.class Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;
.super Ljava/lang/Thread;
.source "PhoneNumberLocatorDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DBDowloadThread"
.end annotation


# instance fields
.field private client:Landroid/net/http/AndroidHttpClient;

.field private isCanceledByUser:Z

.field private mBinTmpFile:Ljava/lang/String;

.field mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private request:Lorg/apache/http/client/methods/HttpGet;

.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    return-void
.end method

.method private downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;
    .locals 48
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1

    const/16 v16, 0x0

    :cond_0
    :goto_0
    return-object v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "CDDownloadThread : run : DownloadThread Started"

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    move-object/from16 v32, p2

    const/16 v31, 0x0

    move-object/from16 v11, p1

    new-instance v16, Lcom/android/phone/callsettings/DownloadFileInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/callsettings/DownloadFileInfo;-><init>()V

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/16 v36, 0x0

    const-string v30, "bin"

    const/16 v39, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "before start create temp file"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "after start create temp file"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const-wide/16 v17, 0x0

    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "downloadFileByWebkit currentTempFilePath = "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const v44, 0x19000

    :try_start_0
    move/from16 v0, v44

    new-array v12, v0, [B

    move v6, v8

    const-wide/16 v42, 0x0

    const-string v44, "Android"

    invoke-static/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "CDDownloadThread : use AndroidHttpClient : "

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : Actual URL: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v44, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run :Final URL "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "SAMSUNG-"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    sget-object v45, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    const-string v45, "User-Agent"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v5}, Lorg/apache/http/message/AbstractHttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v35

    if-eqz v34, :cond_3

    const/16 v44, -0x1

    move/from16 v0, v44

    move/from16 v1, v35

    if-eq v0, v1, :cond_3

    const/16 v29, 0x1

    :cond_3
    :try_start_1
    new-instance v28, Ljava/net/URI;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v41, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v28 .. v28}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v28 .. v28}, Ljava/net/URI;->getPort()I

    move-result v45

    const-string v46, "http"

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v33

    const-string v44, "http.socket.timeout"

    const/16 v45, 0x2710

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    const-string v44, "http.connection.timeout"

    const/16 v45, 0x2710

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    if-eqz v29, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread :Set  Proxy Host:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "  ProxyPort :"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    new-instance v44, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v29, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v37

    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "http response"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v44, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v44, :cond_c

    const/16 v19, 0x190

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_5
    if-eqz v39, :cond_0

    :try_start_5
    throw v39
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v15

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : URISyntaxException  Uri :  "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v19, 0x190

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_6
    if-eqz v39, :cond_7

    :try_start_7
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "CDDownloadThread : run : Exiting DownloadThread"

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    int-to-long v0, v8

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v44, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    const-wide/16 v44, 0x0

    move-wide/from16 v0, v44

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    goto/16 :goto_0

    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v37

    goto/16 :goto_1

    :catch_2
    move-exception v15

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : Illegal Arg exception trying to execute request for "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    const/16 v19, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v15

    :goto_4
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : Exception for "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_9
    if-eqz v39, :cond_7

    :try_start_b
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :catch_5
    move-exception v15

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : IOException trying to execute request for "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    const/16 v19, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v44

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v45, v0

    if-eqz v45, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v45, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_a
    if-eqz v39, :cond_b

    :try_start_d
    invoke-virtual/range {v39 .. v39}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    :cond_b
    :goto_6
    throw v44

    :cond_c
    :try_start_e
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : received response for "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v14

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "get content"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v7, 0x0

    move-object/from16 v40, v39

    :goto_7
    :try_start_11
    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v44

    if-nez v44, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v44, v0

    if-eqz v44, :cond_12

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_e
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_f
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v14, :cond_10

    :try_start_12
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_10
    :goto_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_11
    if-eqz v40, :cond_0

    :try_start_13
    invoke-virtual/range {v40 .. v40}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :catch_7
    move-exception v15

    const/16 v19, 0x1ef

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    :catch_8
    move-exception v13

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "entityStream.close error"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_8

    :catch_9
    move-exception v15

    move-object/from16 v39, v40

    goto/16 :goto_4

    :cond_12
    if-eqz v14, :cond_13

    :try_start_16
    invoke-virtual {v14, v12}, Ljava/io/InputStream;->read([B)I

    move-result v7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "CDDownloadThread : run : Data processing"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    const/16 v44, -0x1

    move/from16 v0, v44

    if-ne v7, v0, :cond_14

    const/16 v19, 0x1ef

    :goto_9
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "CDDownloadThread : run : CD_STATUS_DOWNLOAD_COMPLETED"

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v14, :cond_1a

    :try_start_18
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object/from16 v39, v40

    goto/16 :goto_2

    :catch_a
    move-exception v15

    const/16 v19, 0x1ef

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    goto :goto_9

    :catchall_1
    move-exception v44

    move-object/from16 v39, v40

    goto/16 :goto_5

    :cond_14
    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isLanguageChange:Z
    invoke-static {}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$400()Z

    move-result v44

    if-nez v44, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    move/from16 v44, v0

    if-eqz v44, :cond_19

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_16
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    move-object/from16 v45, v0

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_17
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    if-eqz v44, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/net/http/AndroidHttpClient;->close()V

    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->client:Landroid/net/http/AndroidHttpClient;

    :cond_18
    if-eqz v40, :cond_0

    :try_start_1a
    invoke-virtual/range {v40 .. v40}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_19
    if-nez v40, :cond_1b

    :try_start_1b
    new-instance v39, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :goto_a
    const/16 v44, 0x0

    :try_start_1c
    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v12, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :goto_b
    add-int/2addr v8, v7

    move-object/from16 v40, v39

    goto/16 :goto_7

    :catch_c
    move-exception v15

    move-object/from16 v39, v40

    :goto_c
    const/16 v19, 0x1ec

    goto :goto_b

    :catch_d
    move-exception v13

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    const-string v45, "entityStream.close error"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static/range {v44 .. v45}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-object/from16 v39, v40

    goto/16 :goto_2

    :catch_e
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v44, v0

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v44 .. v46}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :catch_f
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    move-object/from16 v45, v0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "CDDownloadThread : run : exception when closing the file after download : "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static/range {v45 .. v47}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :catch_10
    move-exception v15

    goto :goto_c

    :cond_1a
    move-object/from16 v39, v40

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v39, v40

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v11, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v8, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionVersion_CEK.bin"

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_0
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesBeforeUpdate()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$600(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    :cond_2
    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :try_start_3
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v5, 0x2

    :goto_2
    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_c

    if-ge v0, v5, :cond_c

    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION1 = 2"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_7
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_24

    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto :goto_1

    :cond_9
    const/4 v5, 0x4

    goto :goto_2

    :cond_a
    :try_start_4
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    const-string v11, "/data/data/com.android.phone/HomeLocationVersion_tmp.bin"

    invoke-direct {p0, v11, v8}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_1

    :cond_b
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ready download, fileInfo.fileSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_c
    const/4 v4, 0x1

    iget-wide v11, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_d

    const/4 v4, 0x0

    :cond_d
    if-eqz v4, :cond_18

    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v3, :cond_15

    :try_start_5
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v11, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v10

    :goto_4
    :try_start_6
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "versionInfo1 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mVersionInfo = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    if-eqz v10, :cond_11

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isMessyCode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "the version is messy code"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_e

    const-string v11, "feature_chn_duos_cdma_gsm"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_5
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete mVersionTmpFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_10
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_11
    if-eqz v10, :cond_15

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v11, :cond_15

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v10, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v12, v12, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_VERSION_SAME = 4"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download repeate"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    :goto_6
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Delete mVersionTmpFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_12
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    goto/16 :goto_1

    :cond_13
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "mHandler.sendEmptyMessage(EVENT_VERSION_SAME)"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    const-string v7, "http://xiazai.samsungmobile.com.cn/number_region/NumberRegionDB_CEK.bin"

    if-eqz v7, :cond_16

    const-string v11, "/data/data/com.android.phone/HomeLocationDB_tmp.bin"

    invoke-direct {p0, v11, v7}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->downloadFileByWebkit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/phone/callsettings/DownloadFileInfo;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_17

    iget-object v3, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    :cond_17
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_18
    if-eqz v10, :cond_1a

    if-eqz v2, :cond_1a

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_19

    iget-wide v11, v10, Lcom/android/phone/callsettings/VersionInfo;->dbSize:J

    iget-wide v13, v2, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1a

    :cond_19
    const/4 v4, 0x0

    :cond_1a
    if-eqz v2, :cond_1b

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v11, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->readDownloadFileInfo(Lcom/android/phone/callsettings/DownloadFileInfo;)V

    invoke-virtual {v2}, Lcom/android/phone/callsettings/DownloadFileInfo;->isValidFile()Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v4, 0x1

    :cond_1b
    :goto_7
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCorrectFile = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    if-eqz v4, :cond_20

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    const-string v12, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1c

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1c
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_1d
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileInfo2 = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_1f

    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.sec.action.UPDATE_VERSION"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$300(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download success"

    const/4 v13, 0x1

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v13}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$000(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->saveValuesForSuccess()V
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$800(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)V

    goto/16 :goto_3

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1f
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_20
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "EVENT_HTTP_EXCEPTION = 2"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_21

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_21
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mVersionTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    if-eqz v11, :cond_22

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v12, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$200(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    :cond_22
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->mBinTmpFile:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v12, "download failed"

    # invokes: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$100(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->isAutoUpdateType:Z
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$500(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Z

    move-result v11

    if-eqz v11, :cond_23

    sget v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->sDownloadFailTime:I

    goto/16 :goto_3

    :cond_23
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :cond_24
    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    # getter for: Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->access$700(Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method public startThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->isCanceledByUser:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader$DBDowloadThread;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    return-void
.end method
