.class public Lcom/sec/android/app/camera/gallery/VideoObject;
.super Lcom/sec/android/app/camera/gallery/BaseImage;
.source "VideoObject.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoObject"


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/sec/android/app/camera/gallery/BaseImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "VideoObject"

    const-string v2, "miniThumbBitmap got exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rotateImageBy(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2

    sget v0, Lcom/sec/android/app/camera/gallery/VideoObject;->THUMBNAIL_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/VideoObject;->THUMBNAIL_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoObject"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
