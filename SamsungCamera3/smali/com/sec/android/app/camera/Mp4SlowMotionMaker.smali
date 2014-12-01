.class public Lcom/sec/android/app/camera/Mp4SlowMotionMaker;
.super Ljava/lang/Object;
.source "Mp4SlowMotionMaker.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Mp4SlowMotionMaker"


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private byteArrayToInt([BI)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private byteArrayToLong([BI)J
    .locals 7

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 v3, 0x8

    shl-long v3, v1, v3

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v1, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private findAtom(Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v10, "Mp4SlowMotionMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findAtom() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    new-array v4, v10, [B

    const/4 v10, 0x4

    new-array v8, v10, [B

    const/4 v3, 0x0

    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/4 v10, 0x4

    invoke-direct {p0, v4, v10}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->byteArrayToLong([BI)J

    move-result-wide v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_1
    const-wide/16 v10, 0x4

    sub-long v10, v0, v10

    const-wide/16 v12, 0x4

    sub-long v6, v10, v12

    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    const v11, 0x7fffffff

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const-wide/32 v10, 0x7fffffff

    sub-long/2addr v6, v10

    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    long-to-int v11, v6

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    if-gtz v3, :cond_0

    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getTimeBytes()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private intToByteArray(II)[B
    .locals 4

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private modifyData(IDI)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    const-string v4, "Mp4SlowMotionMaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyData() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const/4 v1, 0x4

    new-array v0, v9, [B

    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->byteArrayToInt([BI)I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, p2

    double-to-int v2, v4

    const-string v4, "Mp4SlowMotionMaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orgData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "newData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->intToByteArray(II)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const/4 v4, 0x1

    return v4
.end method

.method private modifyMdhdData(D)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "Mp4SlowMotionMaker"

    const-string v4, "modifyMdhdData()"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "mdia"

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mdhd"

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x3

    const/4 v0, 0x0

    const-wide/high16 v3, 0x4000000000000000L

    const-wide/high16 v5, -0x4010000000000000L

    mul-double/2addr v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method

.method private modifyMvhdData(D)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "Mp4SlowMotionMaker"

    const-string v3, "modifyMvhdData()"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mvhd"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x3

    const/16 v0, 0x50

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/16 v4, 0x50

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method

.method private modifyTkhdData(D)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "Mp4SlowMotionMaker"

    const-string v3, "modifyTkhdData()"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "trak"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tkhd"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x8

    const/16 v0, 0x3c

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/16 v4, 0x3c

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public makeMp4Slow(Ljava/lang/String;D)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Mp4SlowMotionMaker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeMp4SlowR() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    const-string v1, "Mp4SlowMotionMaker"

    const-string v2, "Can\'t open file!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "moov"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyMvhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyTkhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyMdhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method
