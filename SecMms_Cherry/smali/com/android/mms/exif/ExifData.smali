.class Lcom/android/mms/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/android/mms/exif/IfdData;

.field private final mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/exif/IfdData;

    iput-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/android/mms/exif/IfdData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifData;->addTag(Lcom/android/mms/exif/ExifTag;I)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected addTag(Lcom/android/mms/exif/ExifTag;I)Lcom/android/mms/exif/ExifTag;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/mms/exif/ExifData;->getOrCreateIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_0

    move v4, v6

    :goto_0
    return v4

    :cond_0
    if-nez p1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    instance-of v4, p1, Lcom/android/mms/exif/ExifData;

    if-eqz v4, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/mms/exif/ExifData;

    iget-object v4, v0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    iget-object v5, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, v0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/android/mms/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    move v4, v7

    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/exif/IfdData;->getAllTags()[Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v1, v9

    array-length v6, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    const/4 v7, 0x0

    :cond_2
    return-object v7
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v1, v8, p1

    if-nez v1, :cond_1

    move-object v4, v7

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/exif/IfdData;->getAllTags()[Lcom/android/mms/exif/ExifTag;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v4, v7

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    move-object v4, v7

    goto :goto_0
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/android/mms/exif/IfdData;
    .locals 1

    invoke-static {p1}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOrCreateIfdData(I)Lcom/android/mms/exif/IfdData;
    .locals 2

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v0, v1, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/android/mms/exif/ExifTag;
    .locals 2

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v0, v1, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x8

    iget-object v6, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v3, v6, v8

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    sget v6, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v6}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v6

    new-array v0, v6, [B

    invoke-virtual {v4, v0}, Lcom/android/mms/exif/ExifTag;->getBytes([B)V

    new-array v1, v7, [B

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    sget-object v6, Lcom/android/mms/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "US-ASCII"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/mms/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "EUC-JP"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v5, v6

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/mms/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x8

    array-length v8, v0

    add-int/lit8 v8, v8, -0x8

    const-string v9, "UTF-16"

    invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "ExifData"

    const-string v7, "Failed to decode the user comment"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    aget-object v0, v1, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method protected removeThumbnailData()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/android/mms/exif/ExifData;->mIfdDatas:[Lcom/android/mms/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
