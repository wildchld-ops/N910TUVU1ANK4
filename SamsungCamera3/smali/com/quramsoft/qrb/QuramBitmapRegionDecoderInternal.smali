.class public final Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoderInternal.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoderInternal"


# instance fields
.field public mHandle:I

.field private mRecycled:Z

.field public mShared:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mShared:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    return-void
.end method

.method private checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_0
    instance-of v1, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_1

    :cond_1
    return-object v2
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeNewInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p2, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-nez v1, :cond_0

    const-string v1, "QuramBitmapRegionDecoderInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstance is failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static newInstance([BIIZ)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeNewInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p4, Lcom/quramsoft/qrb/QuramBitmapFactory$Options;->inCancelingRequested:Z

    if-nez v1, :cond_0

    const-string v1, "QuramBitmapRegionDecoderInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newInstanceWithDec is failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapFactory;->DecodeCancel(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "QuramBitmapRegionDecoderInternal.decodeRegion called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rectangle is not inside the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mHandle:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeDecodeRegion(IIIIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "QuramBitmapRegionDecoderInternal.getHeight called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeGetHeight(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "QuramBitmapRegionDecoderInternal.getWidth called on recycled region decoder"

    invoke-direct {p0, v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->checkRecycled(Ljava/lang/String;)V

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeGetWidth(I)I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mHandle:I

    invoke-static {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderNative;->nativeClean(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->mRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
