.class Lcom/sec/android/app/camera/gallery/DrmImageList$DrmImage;
.super Lcom/sec/android/app/camera/gallery/Image;
.source "DrmImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/gallery/DrmImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmImage"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/gallery/BaseImageList;
    .param p2    # Landroid/content/ContentResolver;
    .param p3    # J
    .param p5    # I
    .param p6    # Landroid/net/Uri;
    .param p7    # Ljava/lang/String;
    .param p8    # J
    .param p10    # Ljava/lang/String;
    .param p11    # J
    .param p13    # Ljava/lang/String;
    .param p14    # Ljava/lang/String;
    .param p15    # I

    invoke-direct/range {p0 .. p15}, Lcom/sec/android/app/camera/gallery/Image;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 2

    sget v0, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Z

    sget v0, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
