.class public Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "QuramBitmapRegionDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QuramBitmapRegionDecoder"


# instance fields
.field public mBrd:Landroid/graphics/BitmapRegionDecoder;

.field public mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

.field public mHeight:I

.field public mIsShareable:Z

.field public mIsUseQuramRegionDecoder:Z

.field public mIsUseSkia:Z

.field public mPathName:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseSkia:Z

    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mPathName:Ljava/lang/String;

    iput v2, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mWidth:I

    iput v2, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mHeight:I

    iput-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsShareable:Z

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 3

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 3

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :goto_0
    :try_start_0
    iget-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v2, :cond_2

    invoke-static {p0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->newInstance(Ljava/lang/String;ZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    iget-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iput-boolean v4, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "QuramBitmapRegionDecoder"

    const-string v3, "newInstance : Bad Instance"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static newInstance([BIIZ)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 4

    or-int v2, p1, p2

    if-ltz v2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    if-ge v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->newInstanceWithDec(Ljava/lang/String;Landroid/graphics/Bitmap;IZLcom/quramsoft/qrb/QuramBitmapFactory$Options;)Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    move-result-object v3

    iput-object v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, v0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDecoding()V
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->cancelDecoding()V

    :cond_0
    return-void
.end method

.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0, p1, p2}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v1}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mIsUseQuramRegionDecoder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    invoke-virtual {v0}, Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;->recycle()V

    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrdQuram:Lcom/quramsoft/qrb/QuramBitmapRegionDecoderInternal;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    iput-object v1, p0, Lcom/quramsoft/qrb/QuramBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method
