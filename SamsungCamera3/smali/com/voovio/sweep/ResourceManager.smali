.class Lcom/voovio/sweep/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voovio/sweep/ResourceManager$DecodeImageTask;
    }
.end annotation


# static fields
.field static MAX_DISTANCE:I


# instance fields
.field private m_aNeighbours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field public m_aQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/voovio/sweep/Voovio;",
            ">;"
        }
    .end annotation
.end field

.field private m_bPreloadedImages:Z

.field m_baImage:[B

.field m_bmImage:Landroid/graphics/Bitmap;

.field private m_bmOpts:Landroid/graphics/BitmapFactory$Options;

.field private m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

.field m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

.field m_oSweep:Lcom/voovio/sweep/Sweep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    return-void
.end method

.method public constructor <init>(Lcom/voovio/sweep/ImageProvider;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/ImageProvider;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iput-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$0(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method private setState(Lcom/voovio/sweep/Voovio;I)V
    .locals 5
    .param p1    # Lcom/voovio/sweep/Voovio;
    .param p2    # I

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iput p2, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v3, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v1, :cond_2

    if-lez v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearQueue()V
    .locals 4

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    return-void
.end method

.method public fillTexturePool()V
    .locals 14

    const v13, 0x47012f00

    const/4 v1, 0x0

    const/16 v0, 0xde1

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v10, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v10, v5, :cond_4

    const/16 v7, 0x1401

    const/16 v2, 0x1908

    :goto_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-boolean v5, Lcom/voovio/sweep/Sweep;->POT_TEXTURES:Z

    if-eqz v5, :cond_3

    invoke-static {v3}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v3

    :cond_2
    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->IsPowerOfTwo(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/voovio/util/ConversionUtil;->NextPowerOfTwo(I)I

    move-result v4

    :cond_3
    sget v5, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v12, v5, 0x1

    new-array v9, v12, [I

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/voovio/sweep/TexturePool;->clear(Z)V

    const/4 v11, 0x0

    :goto_2
    if-lt v11, v12, :cond_5

    const/4 v11, 0x0

    :goto_3
    if-lt v11, v12, :cond_7

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v10, v5, :cond_0

    const v7, 0x8363

    const/16 v2, 0x1907

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v5

    aput v5, v9, v11

    aget v5, v9, v11

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0x2801

    sget-boolean v5, Lcom/voovio/sweep/Voovio;->MIPMAPS:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x2703

    :goto_4
    int-to-float v5, v5

    invoke-static {v0, v6, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2802

    invoke-static {v0, v5, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v5, 0x2803

    invoke-static {v0, v5, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    const/16 v5, 0x2601

    goto :goto_4

    :cond_7
    aget v5, v9, v11

    invoke-static {v5}, Lcom/voovio/sweep/TexturePool;->returnTexture(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method public getImage(Lcom/voovio/sweep/Voovio;)Z
    .locals 14
    .param p1    # Lcom/voovio/sweep/Voovio;

    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    if-eqz v10, :cond_3

    iget-object v10, p1, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    iput-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    :goto_1
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v11, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    iput-object v11, v10, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    const/4 v11, 0x0

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_baSize:I

    iget-object v13, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eq v0, v10, :cond_1

    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const-string v10, "ResourceManager"

    const-string v11, "Bitmap was not reused in BitmapFactory.decodeByteArray() "

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    iget-object v11, p1, Lcom/voovio/sweep/Voovio;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v11, v11, Lcom/voovio/sweep/Sweep;->m_strSEFFile:Ljava/lang/String;

    iget-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iget v13, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/voovio/sweep/ImageProvider;->getImageDataByIndex(Ljava/lang/String;[BI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    if-nez v0, :cond_4

    const-string v10, "ResourceManager"

    const-string v11, "IllegalArgumentException in BitmapFactory.decodeByteArray()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    instance-of v10, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v10, :cond_5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v4, v10, v12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v6, v10, v12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long v2, v10, v12

    sub-long v8, v6, v2

    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OutOfMemoryError decoding image "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p1, Lcom/voovio/sweep/Voovio;->m_nId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Memory Log (SweepView::ResourceManager)"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Memory: Used ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Free ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Total ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Max ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "K)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public loop(Z)V
    .locals 7
    .param p1    # Z

    iget-object v3, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_5

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_3

    new-instance v2, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/voovio/sweep/ResourceManager$DecodeImageTask;-><init>(Lcom/voovio/sweep/ResourceManager;Lcom/voovio/sweep/ResourceManager$DecodeImageTask;)V

    iput-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/voovio/sweep/Voovio;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voovio/sweep/Voovio;

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v2, v4, :cond_2

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->DestroyHighResTexture(Z)V

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-nez v2, :cond_0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    :goto_2
    sget v2, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/voovio/sweep/TexturePool;->getTexture()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->AssignHighResTexture(I)V

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/voovio/sweep/Voovio;->UpdateHighResTexture(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    if-ne v2, v4, :cond_6

    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v4, Lcom/voovio/sweep/Voovio;->STATE_DECODING:I

    if-ne v2, v4, :cond_6

    sget v2, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    iput v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget v2, v1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v4, v1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public prepareVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 2
    .param p1    # Lcom/voovio/sweep/Voovio;

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    iget v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    iget v1, p1, Lcom/voovio/sweep/Voovio;->m_nTargetState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/voovio/sweep/ResourceManager;->getImage(Lcom/voovio/sweep/Voovio;)Z

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/voovio/sweep/Voovio;->CreateHighResTexture(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    iput v0, p1, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0
.end method

.method public setBitmapPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public setCurrentVoovio(Lcom/voovio/sweep/Voovio;)V
    .locals 7
    .param p1    # Lcom/voovio/sweep/Voovio;

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v6}, Lcom/voovio/sweep/Sweep;->getNeighbours(Lcom/voovio/sweep/Voovio;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_oDecodeImageTask:Lcom/voovio/sweep/ResourceManager$DecodeImageTask;

    invoke-virtual {v5}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lcom/voovio/sweep/ResourceManager;->m_aNeighbours:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voovio/sweep/Voovio;

    iget v5, v3, Lcom/voovio/sweep/Voovio;->m_nDistance:I

    sget v6, Lcom/voovio/sweep/ResourceManager;->MAX_DISTANCE:I

    if-gt v5, v6, :cond_5

    sget v5, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    invoke-direct {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_5
    sget v5, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    invoke-direct {p0, v3, v5}, Lcom/voovio/sweep/ResourceManager;->setState(Lcom/voovio/sweep/Voovio;I)V

    goto :goto_2
.end method

.method public setImageProvider(Lcom/voovio/sweep/ImageProvider;)V
    .locals 0
    .param p1    # Lcom/voovio/sweep/ImageProvider;

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oImageProvider:Lcom/voovio/sweep/ImageProvider;

    return-void
.end method

.method public setImageSampleSize(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method public setSweep(Lcom/voovio/sweep/Sweep;)V
    .locals 13
    .param p1    # Lcom/voovio/sweep/Sweep;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/voovio/sweep/ResourceManager;->clearQueue()V

    iput-boolean v10, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    iput-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    iput-object p1, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/4 v11, 0x6

    if-eq v8, v11, :cond_6

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v8, v8, Lcom/voovio/sweep/Sweep;->m_nOrientation:I

    const/16 v11, 0x8

    if-eq v8, v11, :cond_6

    move v0, v10

    :goto_0
    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v8, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    :goto_1
    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v8, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    :goto_2
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v8, v9, :cond_1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    shr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v9, :cond_0

    shr-int/2addr v3, v6

    shr-int/2addr v2, v6

    :cond_1
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v3, :cond_2

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v2, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v12, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmOpts:Landroid/graphics/BitmapFactory$Options;

    iget-object v8, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bmImage:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    iget-object v8, v8, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v8, :cond_9

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    iget-boolean v8, p0, Lcom/voovio/sweep/ResourceManager;->m_bPreloadedImages:Z

    if-nez v8, :cond_5

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    :goto_4
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_a

    new-array v8, v4, [B

    iput-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_baImage:[B

    :cond_5
    return-void

    :cond_6
    move v0, v9

    goto :goto_0

    :cond_7
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v3, v8, Lcom/voovio/sweep/Sweep;->m_nImageWidth:I

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget v2, v8, Lcom/voovio/sweep/Sweep;->m_nImageHeight:I

    goto :goto_2

    :cond_9
    move v8, v10

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/voovio/sweep/ResourceManager;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iget-object v8, v8, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/voovio/sweep/Voovio;

    iget v7, v8, Lcom/voovio/sweep/Voovio;->m_baSize:I

    if-le v7, v4, :cond_b

    move v4, v7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
