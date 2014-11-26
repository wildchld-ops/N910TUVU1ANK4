.class public abstract Lcom/sec/android/app/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateTaken:J

.field private final mDisplayName:Ljava/lang/String;

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    iput p5, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mIndex:I

    iput-object p6, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    iput-wide p8, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMiniThumbMagic:J

    iput-object p10, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    iput-wide p11, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    iput-object p13, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    iput-object p14, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private setupDimension()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/sec/android/app/camera/gallery/Image;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/sec/android/app/camera/gallery/Image;

    iget-object v1, p1, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    iget-wide v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/gallery/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v1, v2, p4}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

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

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "BaseImage"

    const-string v3, "miniThumbBitmap got exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
