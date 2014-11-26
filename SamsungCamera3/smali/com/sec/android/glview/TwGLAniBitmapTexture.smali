.class public Lcom/sec/android/glview/TwGLAniBitmapTexture;
.super Lcom/sec/android/glview/TwGLAniTexture;
.source "TwGLAniBitmapTexture.java"


# instance fields
.field private mBitmapTexture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLAniTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;
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

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniBitmapTexture;->mBitmapTexture:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
