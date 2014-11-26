.class public Lcom/android/phone/HTTPRequestHelper;
.super Ljava/lang/Object;
.source "HTTPRequestHelper.java"


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

.field private mUploadTimeoutTimer:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;

.field private runningThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/CallMessageConstants$RequestType;)V
    .locals 2
    .param p1    # Landroid/os/Handler;
    .param p2    # Lcom/android/phone/CallMessageConstants$RequestType;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/CallMessageConstants$RequestType;

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mDownloadPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/phone/CallMessageConstants$RequestType;Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 2
    .param p1    # Landroid/os/Handler;
    .param p2    # Lcom/android/phone/CallMessageConstants$RequestType;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/CallMessageConstants$RequestType;->NONE:Lcom/android/phone/CallMessageConstants$RequestType;

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mDownloadPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    iput-object p3, p0, Lcom/android/phone/HTTPRequestHelper;->mDownloadPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HTTPRequestHelper;)Ljava/util/Timer;
    .locals 1
    .param p0    # Lcom/android/phone/HTTPRequestHelper;

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private clearUploadTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private convertToJSONString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errMsg"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/HTTPRequestHelper;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dumpHttpGet(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 9
    .param p1    # Lorg/apache/http/client/methods/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpHttpGet - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    const-string v5, "dumpHttpGet - Header [%s, %s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpHttpPost(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 11
    .param p1    # Lorg/apache/http/client/methods/HttpPost;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHttpPost - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    const-string v7, "dumpHttpPost - Header [%s, %s]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/HTTPRequestHelper;->convertToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpHttpPost - Entity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private dumpHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1    # Lorg/apache/http/HttpResponse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpHttpResponse - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    const-string v5, "dumpHttpResponse - Header [%s, %s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/HTTPRequestHelper;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "HTTPRequestHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUploadTimeout(Lcom/android/phone/network/multipart/MultipartEntity;Lorg/apache/http/client/HttpClient;)V
    .locals 7
    .param p1    # Lcom/android/phone/network/multipart/MultipartEntity;
    .param p2    # Lorg/apache/http/client/HttpClient;

    const/16 v6, 0x1f4

    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/HTTPRequestHelper;->mUploadTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/HTTPRequestHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/HTTPRequestHelper$1;-><init>(Lcom/android/phone/HTTPRequestHelper;Lcom/android/phone/network/multipart/MultipartEntity;Lorg/apache/http/client/HttpClient;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public convertToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 10
    .param p1    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x7d0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ""

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-array v2, v9, [C

    const-string v5, ""

    :goto_0
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v9, 0x0

    invoke-static {v2, v9, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v9, 0x7d0

    new-array v2, v9, [C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v8, v7

    :goto_1
    return-object v8

    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_1
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 12
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v11, 0x2ee0

    const/4 v8, 0x0

    const-string v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v4, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-static {v2, v9}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/android/phone/HTTPClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v9, "http.connection.timeout"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const-string v9, "http.socket.timeout"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpGet(Lorg/apache/http/client/methods/HttpGet;)V

    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "thread interrupted return false"

    invoke-static {v7}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    move v7, v8

    :goto_2
    return v7

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpResponse(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V

    move v7, v8

    goto :goto_2
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .param p1    # Lorg/apache/http/HttpResponse;

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v5, "URL"

    iget-object v6, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ReqType"

    iget-object v6, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/HTTPRequestHelper;->clearUploadTimeout()V

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    sget-object v6, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    if-ne v5, v6, :cond_4

    new-instance v4, Lcom/android/phone/HTTPResponseParser;

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/phone/HTTPResponseParser;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v5, "support_mcid_with_alertinfo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    sget-object v6, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    if-ne v5, v6, :cond_0

    const v5, 0x80633

    invoke-virtual {v4, v5}, Lcom/android/phone/HTTPResponseParser;->setKTContentLength(I)V

    const-string v5, "image/png"

    invoke-virtual {v4, v5}, Lcom/android/phone/HTTPResponseParser;->setKTContentType(Ljava/lang/String;)V

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/android/phone/HTTPResponseParser;->parsing(Lorg/apache/http/HttpResponse;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/android/phone/HTTPResponseParser;->dump()V

    const-string v5, "support_mcid_with_alertinfo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "Result"

    invoke-virtual {v4}, Lcom/android/phone/HTTPResponseParser;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mReqType:Lcom/android/phone/CallMessageConstants$RequestType;

    sget-object v6, Lcom/android/phone/CallMessageConstants$RequestType;->DOWNLOAD_CONTENT:Lcom/android/phone/CallMessageConstants$RequestType;

    if-ne v5, v6, :cond_2

    const-string v5, "Result"

    const-string v6, "0000"

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/android/phone/HTTPRequestHelper;->convertToJSONString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DownloadPath"

    iget-object v6, p0, Lcom/android/phone/HTTPRequestHelper;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DownloadResult"

    invoke-virtual {v4}, Lcom/android/phone/HTTPResponseParser;->getContents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const-string v5, "handleResponse : HttpResponse is null, HTTP error occurred"

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    const-string v5, "Result"

    const-string v6, "9998"

    const-string v7, "Local err1"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/HTTPRequestHelper;->convertToJSONString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "thread interrupted block send message"

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    new-instance v4, Lcom/android/phone/HTTPResponseParser;

    invoke-direct {v4}, Lcom/android/phone/HTTPResponseParser;-><init>()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/android/phone/HTTPResponseParser;->isHTMLContents()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/android/phone/HTMLElement;

    const-string v5, "body"

    invoke-direct {v0, v5}, Lcom/android/phone/HTMLElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/HTTPResponseParser;->getContents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/HTMLElement;->htmlParsing(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/HTMLElement;->dump()V

    const-string v5, "Result"

    iget-object v6, v0, Lcom/android/phone/HTMLElement;->Data:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const-string v5, "handleResponse : HttpResponse is null, HTTP error occurred"

    invoke-static {v5}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    const-string v5, "Result"

    const-string v6, "9999"

    const-string v7, "Not enough space"

    invoke-direct {p0, v6, v7}, Lcom/android/phone/HTTPRequestHelper;->convertToJSONString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/phone/HTTPRequestHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v12, 0x2ee0

    const-string v9, "https://"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/android/phone/HTTPClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.connection.timeout"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.socket.timeout"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v10, v5, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v3, v6, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7, v3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v7}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpPost(Lorg/apache/http/client/methods/HttpPost;)V

    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpResponse(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move-object v2, v3

    :goto_2
    return v9

    :catch_0
    move-exception v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V

    const/4 v9, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method public postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 14
    .param p1    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v11, "https://"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    iput-object p1, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    :goto_0
    const/4 v7, 0x0

    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[postMultipart] adding param: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    new-instance v12, Lcom/android/phone/network/multipart/StringPart;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v6, v11, v13}, Lcom/android/phone/network/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "https://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/android/phone/network/multipart/FilePart;

    const-string v12, "user_content"

    invoke-direct {v11, v12, v4}, Lcom/android/phone/network/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v7, :cond_3

    :try_start_1
    invoke-static {}, Lcom/android/phone/HTTPClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.connection.timeout"

    const/16 v13, 0x2ee0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    iget-object v11, p0, Lcom/android/phone/HTTPRequestHelper;->mUrl:Ljava/lang/String;

    invoke-direct {v9, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/android/phone/network/multipart/MultipartEntity;

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/android/phone/network/multipart/Part;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/android/phone/network/multipart/Part;

    invoke-direct {v8, v11}, Lcom/android/phone/network/multipart/MultipartEntity;-><init>([Lcom/android/phone/network/multipart/Part;)V

    invoke-virtual {v9, v8}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v9}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpPost(Lorg/apache/http/client/methods/HttpPost;)V

    invoke-direct {p0, v8, v1}, Lcom/android/phone/HTTPRequestHelper;->setUploadTimeout(Lcom/android/phone/network/multipart/MultipartEntity;Lorg/apache/http/client/HttpClient;)V

    invoke-interface {v1, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/HTTPRequestHelper;->dumpHttpResponse(Lorg/apache/http/HttpResponse;)V

    invoke-virtual {p0, v10}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v11, 0x1

    :goto_3
    return v11

    :catch_0
    move-exception v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileNotFoundException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/HTTPRequestHelper;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/HTTPRequestHelper;->log(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const-string v11, "[postMultipart] error is occured"

    invoke-static {v11}, Lcom/android/phone/HTTPRequestHelper;->englog(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[postMultipart] Could not upload file with error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/HTTPRequestHelper;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/HTTPRequestHelper;->clearUploadTimeout()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/phone/HTTPRequestHelper;->handleResponse(Lorg/apache/http/HttpResponse;)V

    const/4 v11, 0x0

    goto :goto_3
.end method
