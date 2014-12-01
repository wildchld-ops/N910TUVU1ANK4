.class Lcom/android/mms/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcom/android/mms/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcom/android/mms/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/exif/ExifReader;->mInterface:Lcom/android/mms/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/android/mms/exif/ExifData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/android/mms/exif/ExifReader;->mInterface:Lcom/android/mms/exif/ExifInterface;

    invoke-static {p1, v5}, Lcom/android/mms/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/android/mms/exif/ExifInterface;)Lcom/android/mms/exif/ExifParser;

    move-result-object v3

    new-instance v2, Lcom/android/mms/exif/ExifData;

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v5, 0x5

    if-eq v1, v5, :cond_5

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->next()I

    move-result v1

    goto :goto_0

    :pswitch_0
    new-instance v5, Lcom/android/mms/exif/IfdData;

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getCurrentIfd()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/mms/exif/IfdData;-><init>(I)V

    invoke-virtual {v2, v5}, Lcom/android/mms/exif/ExifData;->addIfdData(Lcom/android/mms/exif/IfdData;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->hasValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/mms/exif/ExifParser;->registerForTagValue(Lcom/android/mms/exif/ExifTag;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getTag()Lcom/android/mms/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getDataType()S

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/mms/exif/ExifParser;->readFullTagValue(Lcom/android/mms/exif/ExifTag;)V

    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/mms/exif/ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/exif/ExifData;->getIfdData(I)Lcom/android/mms/exif/IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/mms/exif/IfdData;->setTag(Lcom/android/mms/exif/ExifTag;)Lcom/android/mms/exif/ExifTag;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getCompressedImageSize()I

    move-result v5

    new-array v0, v5, [B

    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {v2, v0}, Lcom/android/mms/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the compressed thumbnail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getStripSize()I

    move-result v5

    new-array v0, v5, [B

    array-length v5, v0

    invoke-virtual {v3, v0}, Lcom/android/mms/exif/ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v3}, Lcom/android/mms/exif/ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v2, v5, v0}, Lcom/android/mms/exif/ExifData;->setStripBytes(I[B)V

    goto/16 :goto_1

    :cond_4
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
