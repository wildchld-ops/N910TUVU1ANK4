.class public Lcom/quramsoft/qdio/QdioJNI;
.super Ljava/lang/Object;
.source "QdioJNI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v1, "Qdio"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QURAMSOFT"

    const-string v2, "Qdio load fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native AddSoundInQdioFile(Ljava/lang/String;[BI)I
.end method

.method private static native ParseQdioFile(Ljava/lang/String;)[I
.end method

.method public static checkAudioInJPEG(Ljava/lang/String;)Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .locals 7
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, v3

    check-cast v0, [I

    if-nez p0, :cond_1

    const-string v4, "QURAM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAudioInJPEG input parameter is null : filename = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->ParseQdioFile(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const-string v4, "QURAM"

    const-string v5, "Some Sound Data is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;

    invoke-direct {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    if-lt v1, v4, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    aget v4, v0, v1

    if-lez v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    if-gtz v4, :cond_5

    :cond_4
    const-string v4, "QURAM"

    const-string v5, "Some Sound Data stream is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    # getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->startOffset:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$0(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;

    move-result-object v4

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->endOffset:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$1(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {v2}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$3(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;I)V

    invoke-static {v2, p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$4(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static native copyAdioData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyAdioInJPEGtoPNG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/quramsoft/qdio/QdioJNI;->copyAdioData(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAudioStreamBuffer(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;I)[B
    .locals 9
    .param p0    # Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;
    .param p1    # I

    const/4 v5, 0x0

    move-object v3, v5

    check-cast v3, [B

    if-nez p0, :cond_0

    const-string v6, "QURAM"

    const-string v7, "qdioJpegData is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    # getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v6

    if-gt v6, p1, :cond_1

    const-string v6, "QURAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "invalid index. file : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->audio_count:I
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->access$2(Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " audio streams but index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getStartOffset(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/quramsoft/qdio/QdioJNI$QdioJPEGData;->getLength(I)I

    move-result v6

    add-int v1, v4, v6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    if-ge v6, v1, :cond_2

    const-string v6, "QURAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fis.available is smaller then audio stream end : fileLen = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", audio strema end on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v5, v3

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v5, "QURAM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fis.avaliable = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "QURAM"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "s = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v5, v1, v4

    new-array v3, v5, [B

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static native getNativeVersion()I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/quramsoft/qdio/QdioJNI;->getNativeVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1.01c_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isJPEG(Ljava/lang/String;)I
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v0, -0x1

    if-nez p0, :cond_1

    const-string v1, "QURAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isJPEG input parameter is null : filename = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/quramsoft/qdio/QdioJNI;->isQdioFile(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native isQdioFile(Ljava/lang/String;)I
.end method

.method public static saveAudioJPEG(Ljava/lang/String;[B)I
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # [B

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input parameter is null : filename = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input parameter is null : audioStream = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioStream.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const-string v0, "QURAM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveAudioJPEG input prameter is null : audioStream = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/quramsoft/qdio/QdioJNI;->AddSoundInQdioFile(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_1
.end method
