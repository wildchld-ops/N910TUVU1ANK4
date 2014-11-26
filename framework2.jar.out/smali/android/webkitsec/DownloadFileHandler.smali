.class Landroid/webkitsec/DownloadFileHandler;
.super Landroid/os/Handler;
.source "DownloadFileHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadFileHandler"

.field public static MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;


# instance fields
.field public isDownloadabelfile:Z

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field private final mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

.field public mMimeType:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/vnd.oma.dd+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    const-string v0, "application/vnd.oma.drm.ro+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    const-string v0, "application/vnd.oma.drm.dcf"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    const-string v0, "application/vnd.oma.drm.roap-pdu+xml"

    sput-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # J

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/webkitsec/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkitsec/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    iput-object p1, p0, Landroid/webkitsec/DownloadFileHandler;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkitsec/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    iput-wide p6, p0, Landroid/webkitsec/DownloadFileHandler;->mContentLength:J

    iput-object p2, p0, Landroid/webkitsec/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkitsec/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    iput-object p5, p0, Landroid/webkitsec/DownloadFileHandler;->mReferer:Ljava/lang/String;

    return-void
.end method

.method private static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0    # Ljava/lang/String;

    const/16 v10, 0x3b

    const/16 v9, 0x22

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    const/4 v3, 0x0

    const-string/jumbo v5, "type="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_5

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :cond_5
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_7
    return-object v3
.end method

.method static isDownLoadableContent(Ljava/lang/String;)Z
    .locals 5
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kanas3g"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ageraltezm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {p0}, Landroid/webkitsec/DownloadFileHandler;->isOMAorDRMMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/webkitsec/DownloadFileHandler;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private static isOMAorDRMMimeType(Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;

    sget-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkitsec/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "DownloadFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOMAorDRMMimeType: mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public didReceiveData([BI)V
    .locals 3
    .param p1    # [B
    .param p2    # I

    iget-object v1, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkitsec/ByteArrayBuilder;->append([BII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleFile()Z
    .locals 11

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sdcard/tempfile1.xml"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Landroid/webkitsec/DownloadFileHandler;->isDownloadabelfile:Z

    const-string v7, "DownloadFileHandler"

    const-string v8, "****Download File Creation Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    iget-object v7, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkitsec/ByteArrayBuilder;->getFirstChunk()Landroid/webkitsec/ByteArrayBuilder$Chunk;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v6, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_3

    if-eqz v2, :cond_0

    :try_start_3
    iget-object v6, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkitsec/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    const-string v6, "DownloadFileHandler"

    const-string v8, "***Downloadable File Writing Sucess *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    :goto_0
    :try_start_5
    iget-object v6, p0, Landroid/webkitsec/DownloadFileHandler;->mDataBuilder:Landroid/webkitsec/ByteArrayBuilder;

    invoke-virtual {v6, v0}, Landroid/webkitsec/ByteArrayBuilder;->releaseChunk(Landroid/webkitsec/ByteArrayBuilder$Chunk;)V

    :cond_1
    :goto_1
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    move v6, v5

    :goto_2
    return v6

    :catch_0
    move-exception v3

    :goto_3
    const-string v7, "DownloadFileHandler"

    const-string v8, "Fail to Create Download temp file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_6
    const-string v6, "DownloadFileHandler"

    const-string v8, "****Download File Writing Failure *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v4

    :try_start_8
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    const/4 v5, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_2
    :goto_5
    :try_start_a
    throw v6

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v6

    :cond_3
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v4

    :try_start_c
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :catch_4
    move-exception v4

    const-string v8, "DownloadFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception when closing the file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_5

    :catch_5
    move-exception v4

    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v1, v2

    goto/16 :goto_3
.end method
