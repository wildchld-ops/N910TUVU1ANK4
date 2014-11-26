.class public interface abstract Lcom/sec/android/app/camera/gallery/IImage;
.super Ljava/lang/Object;
.source "IImage.java"


# static fields
.field public static final MINI_THUMB_MAX_NUM_PIXELS:I

.field public static final MINI_THUMB_TARGET_SIZE:I

.field public static final NO_NATIVE:Z = false

.field public static final NO_ROTATE:Z = false

.field public static final ROTATE_AS_NEEDED:Z = true

.field public static final THUMBNAIL_MAX_NUM_PIXELS:I

.field public static final THUMBNAIL_TARGET_SIZE:I

.field public static final UNCONSTRAINED:I = -0x1

.field public static final USE_NATIVE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0b000c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_TARGET_SIZE:I

    const v0, 0x7f0b000d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_TARGET_SIZE:I

    const v0, 0x7f0b000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/gallery/IImage;->THUMBNAIL_MAX_NUM_PIXELS:I

    const v0, 0x7f0b000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/gallery/IImage;->MINI_THUMB_MAX_NUM_PIXELS:I

    return-void
.end method


# virtual methods
.method public abstract fullSizeBitmap(II)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeImageData()Ljava/io/InputStream;
.end method

.method public abstract fullSizeImageId()J
.end method

.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
.end method

.method public abstract getDataPath()Ljava/lang/String;
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDegreesRotated()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isDrm()Z
.end method

.method public abstract isReadonly()Z
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract rotateImageBy(I)Z
.end method

.method public abstract thumbBitmap(Z)Landroid/graphics/Bitmap;
.end method
