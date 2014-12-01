.class public Lcom/sec/android/app/camera/gallery/Image;
.super Lcom/sec/android/app/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"


# instance fields
.field private mExif:Landroid/media/ExifInterface;

.field private mRotation:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/sec/android/app/camera/gallery/BaseImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput p15, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    return-void
.end method

.method private loadExifData()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BaseImage"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveExifData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    :cond_0
    return-void
.end method

.method private setExifRotation(I)V
    .locals 5

    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/gallery/Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/Image;->saveExifData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BaseImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to save exif data with new orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/Image;->loadExifData()V

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getDegreesRotated()I

    move-result v1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/gallery/Image;->setExifRotation(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/Image;->setDegreesRotated(I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected setDegreesRotated(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "orientation"

    iget v2, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method
