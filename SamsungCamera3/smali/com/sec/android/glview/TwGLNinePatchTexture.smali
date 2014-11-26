.class public Lcom/sec/android/glview/TwGLNinePatchTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLNinePatchTexture.java"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mPadding:Landroid/graphics/Rect;

.field private mResId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    iput p6, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    float-to-int v0, p4

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method protected getNinePatch()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->loadNinePatch()V

    :try_start_0
    iget v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    iget v5, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadNinePatch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 2
    .param p1    # F

    monitor-enter p0

    move v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v1

    :cond_0
    float-to-int v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSize(FF)V
    .locals 4
    .param p1    # F
    .param p2    # F

    move v1, p1

    move v0, p2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    :cond_1
    float-to-int v2, v1

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    float-to-int v2, v0

    iput v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    iget v2, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mHeight:I

    int-to-float v3, v3

    invoke-super {p0, v2, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z

    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 2
    .param p1    # F

    monitor-enter p0

    move v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mNinePatch:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v0, v1

    :cond_0
    float-to-int v1, v0

    iput v1, p0, Lcom/sec/android/glview/TwGLNinePatchTexture;->mWidth:I

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
