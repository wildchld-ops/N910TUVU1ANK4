.class public final Lcom/quramsoft/qrb/QuramJpegCodec;
.super Ljava/lang/Object;
.source "QuramJpegCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeJPEG_Full(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Ljava/io/FileDescriptor;

    invoke-static {p0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeJPEG_Full(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeJPEG_Full(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-static {p0, p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeJPEG_Full([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # [B
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/graphics/BitmapFactory$Options;

    invoke-static {p3}, Lcom/quramsoft/qrb/QuramBitmapFactory;->translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeByteArray([BIILcom/quramsoft/qrb/QuramBitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeJPEG_Region(Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .param p1    # Landroid/graphics/BitmapFactory$Options;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput p2, v1, Landroid/graphics/Rect;->left:I

    iput p4, v1, Landroid/graphics/Rect;->top:I

    iput p3, v1, Landroid/graphics/Rect;->right:I

    iput p5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, p1}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "QuramJpegCodec"

    const-string v3, "Error : region decoding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static decodeJPEG_Thumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/graphics/BitmapFactory$Options;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeJPEG_Thumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/qrb/QuramBitmapFactory;->decodeFileFromThumbnail(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static partialDecodeJPEG(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Ljava/lang/String;
    .param p1    # Landroid/graphics/BitmapFactory$Options;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-static {p1}, Lcom/quramsoft/qrb/QuramBitmapFactory;->translateBitmapFactoryOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapFactory;->partialDecodeFile(Ljava/lang/String;Lcom/quramsoft/qrb/QuramBitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setLibName()V
    .locals 4

    :try_start_0
    const-string v1, "XIVCoder"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ERROR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load fail : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
