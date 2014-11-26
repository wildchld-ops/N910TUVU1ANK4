.class Lcom/android/mms/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcom/android/mms/exif/ExifData;

.field private final mInterface:Lcom/android/mms/exif/ExifInterface;

.field private final mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/android/mms/exif/ExifInterface;)V
    .locals 2
    .param p1    # Ljava/io/OutputStream;
    .param p2    # Lcom/android/mms/exif/ExifInterface;

    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 11

    const/16 v6, 0x8

    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3, v6}, Lcom/android/mms/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I

    move-result v6

    sget v9, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    :cond_0
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v6}, Lcom/android/mms/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I

    move-result v6

    :cond_1
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    sget v9, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    invoke-direct {p0, v5, v6}, Lcom/android/mms/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I

    move-result v6

    :cond_2
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    sget v9, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    invoke-direct {p0, v1, v6}, Lcom/android/mms/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I

    move-result v6

    :cond_3
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3, v6}, Lcom/android/mms/exif/IfdData;->setOffsetToNextIfd(I)V

    invoke-direct {p0, v4, v6}, Lcom/android/mms/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v9

    if-eqz v9, :cond_5

    sget v9, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    :cond_4
    :goto_0
    return v6

    :cond_5
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/mms/exif/ExifData;->hasUncompressedStrip()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/mms/exif/ExifData;->getStripCount()I

    move-result v8

    new-array v7, v8, [J

    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9}, Lcom/android/mms/exif/ExifData;->getStripCount()I

    move-result v9

    if-ge v2, v9, :cond_6

    int-to-long v9, v6

    aput-wide v9, v7, v2

    iget-object v9, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v9, v2}, Lcom/android/mms/exif/ExifData;->getStrip(I)[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sget v9, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    goto :goto_0
.end method

.method private calculateOffsetOfIfd(Lcom/android/mms/exif/IfdData;I)I
    .locals 7
    .param p1    # Lcom/android/mms/exif/IfdData;
    .param p2    # I

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getTagCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr p2, v5

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getAllTags()[Lcom/android/mms/exif/ExifTag;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/mms/exif/ExifTag;->setOffset(I)V

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v5

    add-int/2addr p2, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/mms/exif/IfdData;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14, v6}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    invoke-virtual {v6, v2}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/mms/exif/IfdData;

    const/4 v14, 0x2

    invoke-direct {v1, v14}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14, v1}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    invoke-virtual {v6, v4}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5
    invoke-virtual {v1, v9}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v7, :cond_7

    new-instance v7, Lcom/android/mms/exif/IfdData;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14, v7}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v12

    if-nez v12, :cond_8

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    invoke-virtual {v7, v12}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v10

    if-nez v10, :cond_9

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v10, v14}, Lcom/android/mms/exif/ExifTag;->setValue(I)Z

    invoke-virtual {v7, v10}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    :cond_a
    :goto_0
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14}, Lcom/android/mms/exif/ExifData;->hasUncompressedStrip()Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez v7, :cond_c

    new-instance v7, Lcom/android/mms/exif/IfdData;

    const/4 v14, 0x1

    invoke-direct {v7, v14}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14, v7}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14}, Lcom/android/mms/exif/ExifData;->getStripCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v12

    if-nez v12, :cond_d

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mInterface:Lcom/android/mms/exif/ExifInterface;

    sget v15, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v14, v15}, Lcom/android/mms/exif/ExifInterface;->buildUninitializedTag(I)Lcom/android/mms/exif/ExifTag;

    move-result-object v10

    if-nez v10, :cond_e

    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No definition for crucial exif tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_e
    new-array v11, v13, [J

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14}, Lcom/android/mms/exif/ExifData;->getStripCount()I

    move-result v14

    if-ge v5, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v14, v5}, Lcom/android/mms/exif/ExifData;->getStrip(I)[B

    move-result-object v14

    array-length v14, v14

    int-to-long v14, v14

    aput-wide v14, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_f
    invoke-virtual {v10, v11}, Lcom/android/mms/exif/ExifTag;->setValue([J)Z

    invoke-virtual {v7, v12}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v7, v10}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0

    :cond_10
    if-eqz v7, :cond_a

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    sget v14, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v14}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v14

    invoke-virtual {v7, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    goto/16 :goto_0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 3
    .param p1    # I
    .param p2    # [B
    .param p3    # I
    .param p4    # I

    iget-object v2, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int v0, p1, v2

    if-le p4, v0, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v1

    :cond_0
    move v1, p4

    goto :goto_0
.end method

.method private stripNullValueTags(Lcom/android/mms/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .param p1    # Lcom/android/mms/exif/ExifData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/exif/ExifTag;

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcom/android/mms/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/mms/exif/ExifData;->removeTag(SI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private writeAllTags(Lcom/android/mms/exif/OrderedDataOutputStream;)V
    .locals 8
    .param p1    # Lcom/android/mms/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/android/mms/exif/ExifOutputStream;->writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_0
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/android/mms/exif/ExifOutputStream;->writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_1
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v4, p1}, Lcom/android/mms/exif/ExifOutputStream;->writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_2
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, p1}, Lcom/android/mms/exif/ExifOutputStream;->writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_3
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v5, v7}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v5, v7}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/mms/exif/ExifOutputStream;->writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_4
    return-void
.end method

.method private writeExifData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-direct {p0, v5}, Lcom/android/mms/exif/ExifOutputStream;->stripNullValueTags(Lcom/android/mms/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    invoke-direct {p0}, Lcom/android/mms/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    add-int/lit8 v5, v1, 0x8

    const v6, 0xffff

    if-le v5, v6, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exif header is too large (>64Kb)"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v0, Lcom/android/mms/exif/OrderedDataOutputStream;

    iget-object v5, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/mms/exif/OrderedDataOutputStream;

    const/16 v5, -0x1f

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    add-int/lit8 v5, v1, 0x8

    int-to-short v5, v5

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    const v5, 0x45786966

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_3

    const/16 v5, 0x4d4d

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    :goto_0
    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/android/mms/exif/OrderedDataOutputStream;

    const/16 v5, 0x2a

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifOutputStream;->writeAllTags(Lcom/android/mms/exif/OrderedDataOutputStream;)V

    invoke-direct {p0, v0}, Lcom/android/mms/exif/ExifOutputStream;->writeThumbnail(Lcom/android/mms/exif/OrderedDataOutputStream;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/exif/ExifTag;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v5, v4}, Lcom/android/mms/exif/ExifData;->addTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_1

    :cond_3
    const/16 v5, 0x4949

    invoke-virtual {v0, v5}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    goto :goto_0
.end method

.method private writeIfd(Lcom/android/mms/exif/IfdData;Lcom/android/mms/exif/OrderedDataOutputStream;)V
    .locals 9
    .param p1    # Lcom/android/mms/exif/IfdData;
    .param p2    # Lcom/android/mms/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getAllTags()[Lcom/android/mms/exif/ExifTag;

    move-result-object v6

    array-length v7, v6

    int-to-short v7, v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getOffset()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5, p2}, Lcom/android/mms/exif/ExifOutputStream;->writeTagValue(Lcom/android/mms/exif/ExifTag;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    const/4 v1, 0x0

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v7

    rsub-int/lit8 v4, v7, 0x4

    :goto_1
    if-ge v1, v4, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/io/FilterOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/exif/IfdData;->getOffsetToNextIfd()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/android/mms/exif/ExifTag;->getDataSize()I

    move-result v7

    if-le v7, v8, :cond_3

    invoke-static {v5, p2}, Lcom/android/mms/exif/ExifOutputStream;->writeTagValue(Lcom/android/mms/exif/ExifTag;Lcom/android/mms/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static writeTagValue(Lcom/android/mms/exif/ExifTag;Lcom/android/mms/exif/OrderedDataOutputStream;)V
    .locals 6
    .param p0    # Lcom/android/mms/exif/ExifTag;
    .param p1    # Lcom/android/mms/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/FilterOutputStream;->write(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeInt(I)Lcom/android/mms/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->getRational(I)Lcom/android/mms/exif/Rational;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeRational(Lcom/android/mms/exif/Rational;)Lcom/android/mms/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifTag;->getBytes([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {p1, v3}, Lcom/android/mms/exif/OrderedDataOutputStream;->writeShort(S)Lcom/android/mms/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writeThumbnail(Lcom/android/mms/exif/OrderedDataOutputStream;)V
    .locals 2
    .param p1    # Lcom/android/mms/exif/OrderedDataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1}, Lcom/android/mms/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v1, v0}, Lcom/android/mms/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getExifData()Lcom/android/mms/exif/ExifData;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lcom/android/mms/exif/ExifData;)V
    .locals 0
    .param p1    # Lcom/android/mms/exif/ExifData;

    iput-object p1, p0, Lcom/android/mms/exif/ExifOutputStream;->mExifData:Lcom/android/mms/exif/ExifData;

    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/android/mms/exif/ExifOutputStream;->mSingleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/android/mms/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 10
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v9, 0xffff

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    :goto_0
    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    if-eq v4, v6, :cond_b

    :cond_0
    if-lez p3, :cond_b

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    if-le p3, v4, :cond_4

    iget v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    :goto_1
    sub-int/2addr p3, v1

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v1

    :cond_1
    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    if-le p3, v4, :cond_5

    iget v1, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    :goto_2
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v1

    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v1

    :cond_2
    if-nez p3, :cond_6

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, p3

    goto :goto_1

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v6, p1, p2, p3}, Lcom/android/mms/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    if-lt v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_7

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/android/mms/exif/ExifOutputStream;->writeExifData()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v8, p1, p2, p3}, Lcom/android/mms/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, -0x27

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    :cond_8
    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    if-lt v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    if-ne v2, v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToSkip:I

    iput v6, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    :goto_4
    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_9
    invoke-static {v2}, Lcom/android/mms/exif/JpegHeader;->isSofMarker(S)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    iget-object v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/mms/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_4

    :cond_a
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/mms/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    iput v6, p0, Lcom/android/mms/exif/ExifOutputStream;->mState:I

    goto :goto_4

    :cond_b
    if-lez p3, :cond_3

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
