.class public Lcom/sec/android/glview/TwGLNinePatch;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLNinePatch.java"


# instance fields
.field private mHeight:F

.field private mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatch;->mWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLNinePatch;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_3

    cmpl-float v0, p5, v2

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    if-eqz p6, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    iput p4, p0, Lcom/sec/android/glview/TwGLNinePatch;->mWidth:F

    iput p5, p0, Lcom/sec/android/glview/TwGLNinePatch;->mHeight:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_2

    cmpl-float v0, p5, v2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    :cond_3
    invoke-virtual {p0, p7}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public initSize()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    :cond_0
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicWidth()I

    move-result v2

    int-to-float v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getIntrinsicHeight()I

    move-result v2

    int-to-float v0, v2

    goto :goto_1
.end method

.method protected onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setHeight(F)V
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

.method public setImage(I)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mWidth:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mHeight:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLNinePatch;->mWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLNinePatch;->mHeight:F

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    return-void

    :cond_3
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    goto :goto_0
.end method

.method public setImage(IFFZ)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_4

    cmpl-float v0, p3, v2

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    move v4, p2

    move v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLNinePatch;->mNinePatch:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setWidth(F)V
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
