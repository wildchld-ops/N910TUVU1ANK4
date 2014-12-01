.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final SLIDESHOW_BOUNDS_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Mms/image"

.field private static THUMBNAIL_AIRVIEW_MAX_LONG:I

.field private static THUMBNAIL_AIRVIEW_MAX_SHORT:I

.field private static final THUMBNAIL_BOUNDS_LIMIT:I

.field private static THUMBNAIL_MAX_LONG:I

.field private static THUMBNAIL_MAX_SHORT:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mRotate:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x434b0000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    sput v0, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_SHORT:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_LONG:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_AIRVIEW_MAX_SHORT:I

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_AIRVIEW_MAX_LONG:I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v1, "img"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    return-void
.end method

.method private cacheBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/model/ImageModel;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static calcThumbnailImageBounds(Landroid/graphics/Point;IIZ)V
    .locals 10

    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p3, :cond_2

    sget v7, Lcom/android/mms/model/ImageModel;->THUMBNAIL_AIRVIEW_MAX_SHORT:I

    :goto_1
    if-eqz p3, :cond_3

    sget v6, Lcom/android/mms/model/ImageModel;->THUMBNAIL_AIRVIEW_MAX_LONG:I

    :goto_2
    if-eqz v0, :cond_4

    move v2, v7

    move v1, v6

    int-to-float v8, v2

    int-to-float v9, p1

    div-float v3, v8, v9

    :goto_3
    int-to-float v8, p1

    mul-float/2addr v8, v3

    float-to-int v5, v8

    int-to-float v8, p2

    mul-float/2addr v8, v3

    float-to-int v4, v8

    if-ge v5, v2, :cond_5

    move v8, v5

    :goto_4
    iput v8, p0, Landroid/graphics/Point;->x:I

    if-ge v4, v1, :cond_6

    move v8, v4

    :goto_5
    iput v8, p0, Landroid/graphics/Point;->y:I

    iget v8, p0, Landroid/graphics/Point;->x:I

    if-ne v8, v2, :cond_7

    int-to-float v8, v2

    int-to-float v9, v5

    div-float v3, v8, v9

    iget v8, p0, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/Point;->y:I

    :cond_0
    :goto_6
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget v7, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_SHORT:I

    goto :goto_1

    :cond_3
    sget v6, Lcom/android/mms/model/ImageModel;->THUMBNAIL_MAX_LONG:I

    goto :goto_2

    :cond_4
    move v2, v6

    move v1, v7

    int-to-float v8, v1

    int-to-float v9, p2

    div-float v3, v8, v9

    goto :goto_3

    :cond_5
    move v8, v2

    goto :goto_4

    :cond_6
    move v8, v1

    goto :goto_5

    :cond_7
    iget v8, p0, Landroid/graphics/Point;->y:I

    if-ne v8, v1, :cond_0

    int-to-float v8, v1

    int-to-float v9, v4

    div-float v3, v8, v9

    iget v8, p0, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, p0, Landroid/graphics/Point;->x:I

    goto :goto_6
.end method

.method private createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    const/4 v2, 0x1

    :goto_0
    div-int v3, v1, v2

    if-gt v3, p1, :cond_0

    div-int v3, v0, v2

    if-le v3, p1, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    const/4 v2, 0x1

    :goto_0
    div-int v3, v1, v2

    if-gt v3, p1, :cond_0

    div-int v3, v0, v2

    if-le v3, p1, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput p2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v9, v1, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    move-object v0, v11

    goto :goto_0

    :catch_2
    move-exception v7

    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_2
    throw v1

    :catch_4
    move-exception v7

    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    return-void
.end method

.method private getCachedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-gez v1, :cond_1

    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Decode failed, so donot attach file"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :try_start_0
    sget v1, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->cacheBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    sget v1, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    return-void
.end method

.method public checkCreationMode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkImageCreationMode(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/model/ContentRestriction;->checkResolution(III)V

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageRotation(I)V

    return-void
.end method

.method public checkResolution()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/model/ContentRestriction;->checkResolution(III)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/mms/model/ImageModel;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getMediaResizable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMediaResizableForRetry()Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasCachedBitmap()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->getCachedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resizeMedia(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    if-nez v0, :cond_0

    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No room to resize picture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5, p1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough memory to turn image into part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    array-length v4, v4

    iput v4, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p2, p3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setResizeImageSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    return-void
.end method
