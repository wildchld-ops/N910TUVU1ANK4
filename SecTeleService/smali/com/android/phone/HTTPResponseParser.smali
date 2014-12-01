.class public Lcom/android/phone/HTTPResponseParser;
.super Ljava/lang/Object;
.source "HTTPResponseParser.java"


# instance fields
.field private mContentCharSet:Ljava/lang/String;

.field private mContentLength:I

.field private mContentType:Ljava/lang/String;

.field private mContents:Ljava/lang/String;

.field private mDownloadPath:Ljava/lang/String;

.field private mKTContentLength:I

.field private mKTContentType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponse:Lorg/apache/http/HttpResponse;

.field private mStatusCode:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mStatusCode:I

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mContents:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mReasonPhrase:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mDownloadPath:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentLength:I

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mStatusCode:I

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mContents:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mReasonPhrase:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mDownloadPath:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentLength:I

    iput-object v2, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/HTTPResponseParser;->mDownloadPath:Ljava/lang/String;

    return-void
.end method

.method private checkMemorySpace()Z
    .locals 8

    new-instance v2, Ljava/io/File;

    const-string v4, "/sdcard/"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    iget v4, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/HTTPResponseParser;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "HTTPResponse"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseStatusLine()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/android/phone/HTTPResponseParser;->mStatusCode:I

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mVersion:Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertIsToFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .param p1    # Ljava/io/InputStream;
    .param p2    # Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v3, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    const/16 v7, 0x1000

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v0, v1, [B

    const/4 v2, 0x0

    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p1, v0, v9, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V

    sub-int/2addr v3, v2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    const/4 v8, 0x1

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v8

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v5, v6

    goto :goto_3
.end method

.method public convertIsToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/io/InputStream;

    const/16 v7, 0x7d0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, ""

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-array v2, v7, [C

    const-string v4, ""

    :goto_0
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v7, 0x0

    invoke-static {v2, v7, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v7, 0x7d0

    new-array v2, v7, [C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v6

    :goto_1
    return-object v7

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\r\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    goto :goto_1
.end method

.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVersion ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReasonPhrase ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentCharSet ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatusCode ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/HTTPResponseParser;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentLength ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    const-string v0, "--- mContents ---"

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/HTTPResponseParser;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    const-string v0, "-----------------"

    invoke-static {v0}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    return-void
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/HTTPResponseParser;->mContents:Ljava/lang/String;

    return-object v0
.end method

.method public isHTMLContents()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/HTTPResponseParser;->getContents()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseEntity()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP entity may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v5, v3

    if-lez v5, :cond_3

    aget-object v5, v3, v4

    const-string v6, "charset"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    :cond_2
    aget-object v5, v3, v4

    invoke-interface {v5}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    :cond_3
    const-string v5, "support_mcid_with_alertinfo"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentLength:I

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentLength:I

    iput v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    :cond_4
    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentType:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentType:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    :cond_5
    iget v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    const v6, 0x7fffffff

    if-le v5, v6, :cond_6

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HTTP entity too large to be buffered in memory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    iget v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    if-gez v5, :cond_7

    const/16 v5, 0x1000

    iput v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentLength:I

    :cond_7
    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentCharSet:Ljava/lang/String;

    :cond_8
    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mDownloadPath:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    const-string v6, "video/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContentType:Ljava/lang/String;

    const-string v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/HTTPResponseParser;->checkMemorySpace()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/android/phone/HTTPResponseParser;->convertIsToFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_a
    const-string v4, "Free memory space is not enough"

    invoke-static {v4}, Lcom/android/phone/HTTPResponseParser;->englog(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/phone/HTTPResponseParser;->convertIsToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/HTTPResponseParser;->mContents:Ljava/lang/String;

    goto :goto_1
.end method

.method public parsing(Lorg/apache/http/HttpResponse;)I
    .locals 4
    .param p1    # Lorg/apache/http/HttpResponse;

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/phone/HTTPResponseParser;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-direct {p0}, Lcom/android/phone/HTTPResponseParser;->parseStatusLine()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/HTTPResponseParser;->parseEntity()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public setKTContentLength(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentLength:I

    return-void
.end method

.method public setKTContentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/HTTPResponseParser;->mKTContentType:Ljava/lang/String;

    return-void
.end method
