.class Lcom/android/mms/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/exif/ExifModifier$TagOffset;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ExifModifier"


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mInterface:Lcom/android/mms/exif/ExifInterface;

.field private mOffsetBase:I

.field private final mTagOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/exif/ExifModifier$TagOffset;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagToModified:Lcom/android/mms/exif/ExifData;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/mms/exif/ExifInterface;)V
    .locals 5
    .param p1    # Ljava/nio/ByteBuffer;
    .param p2    # Lcom/android/mms/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    iput-object p1, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    iput v3, p0, Lcom/android/mms/exif/ExifModifier;->mOffsetBase:I

    iput-object p2, p0, Lcom/android/mms/exif/ExifModifier;->mInterface:Lcom/android/mms/exif/ExifInterface;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/mms/exif/ByteBufferInputStream;

    invoke-direct {v1, p1}, Lcom/android/mms/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/exif/ExifModifier;->mInterface:Lcom/android/mms/exif/ExifInterface;

    invoke-static {v1, v3}, Lcom/android/mms/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;

    move-result-object v2

    new-instance v3, Lcom/android/mms/exif/ExifData;

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v3, p0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    iget v3, p0, Lcom/android/mms/exif/ExifModifier;->mOffsetBase:I

    invoke-virtual {v2}, Lcom/android/mms/exif/ExifParser;->getTiffStartPosition()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/mms/exif/ExifModifier;->mOffsetBase:I

    iget-object v3, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v0, v1

    goto :goto_0
.end method

.method private modify()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/mms/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/mms/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/exif/ExifModifier$TagOffset;

    iget-object v2, v1, Lcom/android/mms/exif/ExifModifier$TagOffset;->mTag:Lcom/android/mms/exif/ExifTag;

    iget v3, v1, Lcom/android/mms/exif/ExifModifier$TagOffset;->mOffset:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/exif/ExifModifier;->writeTagValue(Lcom/android/mms/exif/ExifTag;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTagValue(Lcom/android/mms/exif/ExifTag;I)V
    .locals 7
    .param p1    # Lcom/android/mms/exif/ExifTag;
    .param p2    # I

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/android/mms/exif/ExifModifier;->mOffsetBase:I

    add-int/2addr v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v0, v4

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/mms/exif/ExifTag;->getRational(I)Lcom/android/mms/exif/Rational;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getNumerator()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/android/mms/exif/Rational;->getDenominator()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v4

    new-array v0, v4, [B

    invoke-virtual {p1, v0}, Lcom/android/mms/exif/ExifTag;->getBytes([B)V

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Lcom/android/mms/exif/ExifTag;->getValueAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

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


# virtual methods
.method protected commit()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/mms/exif/ExifInvalidFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lcom/android/mms/exif/ByteBufferInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v9, v14}, Lcom/android/mms/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v14, 0x5

    :try_start_1
    new-array v7, v14, [Lcom/android/mms/exif/IfdData;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v15

    aput-object v15, v7, v14

    const/4 v14, 0x0

    aget-object v14, v7, v14

    if-eqz v14, :cond_0

    or-int/lit8 v4, v4, 0x1

    :cond_0
    const/4 v14, 0x1

    aget-object v14, v7, v14

    if-eqz v14, :cond_1

    or-int/lit8 v4, v4, 0x2

    :cond_1
    const/4 v14, 0x2

    aget-object v14, v7, v14

    if-eqz v14, :cond_2

    or-int/lit8 v4, v4, 0x4

    :cond_2
    const/4 v14, 0x4

    aget-object v14, v7, v14

    if-eqz v14, :cond_3

    or-int/lit8 v4, v4, 0x8

    :cond_3
    const/4 v14, 0x3

    aget-object v14, v7, v14

    if-eqz v14, :cond_4

    or-int/lit8 v4, v4, 0x10

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifModifier;->mInterface:Lcom/android/mms/exif/ExifInterface;

    invoke-static {v9, v4, v14}, Lcom/android/mms/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    const/4 v14, 0x5

    if-eq v3, v14, :cond_9

    packed-switch v3, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->getCurrentIfd()I

    move-result v14

    aget-object v2, v7, v14

    if-nez v2, :cond_5

    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    move-object v8, v9

    :goto_2
    invoke-static {v8}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v14

    :pswitch_1
    :try_start_2
    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->getTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v12

    const/4 v11, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v12}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/mms/exif/IfdData;->getTag(S)Lcom/android/mms/exif/ExifTag;

    move-result-object v11

    :cond_6
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/mms/exif/ExifTag;->getComponentCount()I

    move-result v15

    if-ne v14, v15, :cond_7

    invoke-virtual {v11}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v14

    invoke-virtual {v12}, Lcom/android/mms/exif/ExifTag;->getDataType()S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eq v14, v15, :cond_8

    :cond_7
    const/4 v14, 0x0

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    return v14

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/exif/ExifModifier;->mTagOffsets:Ljava/util/List;

    new-instance v15, Lcom/android/mms/exif/ExifModifier$TagOffset;

    invoke-virtual {v12}, Lcom/android/mms/exif/ExifTag;->getOffset()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v11, v0}, Lcom/android/mms/exif/ExifModifier$TagOffset;-><init>(Lcom/android/mms/exif/ExifTag;I)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/android/mms/exif/ExifTag;->getTagId()S

    move-result v14

    invoke-virtual {v2, v14}, Lcom/android/mms/exif/IfdData;->removeTag(S)V

    invoke-virtual {v2}, Lcom/android/mms/exif/IfdData;->getTagCount()I

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lcom/android/mms/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    :cond_9
    move-object v1, v7

    array-length v10, v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v10, :cond_b

    aget-object v6, v1, v5

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/mms/exif/IfdData;->getTagCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-lez v14, :cond_a

    const/4 v14, 0x0

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/exif/ExifModifier;->modify()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9}, Lcom/android/mms/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    const/4 v14, 0x1

    goto :goto_3

    :catchall_1
    move-exception v14

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/mms/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public modifyTag(Lcom/android/mms/exif/ExifTag;)V
    .locals 1
    .param p1    # Lcom/android/mms/exif/ExifTag;

    iget-object v0, p0, Lcom/android/mms/exif/ExifModifier;->mTagToModified:Lcom/android/mms/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifData;->addTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    return-void
.end method
