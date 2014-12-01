.class public Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
.super Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.source "TwGLModeMenuDragDropBox.java"


# instance fields
.field private mEditMenu:Lcom/sec/android/glview/TwGLView;

.field private mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

.field private mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

.field private mRelocating:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mRelocating:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;)V

    :cond_0
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mRelocating:Z

    return p1
.end method

.method private relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLView;->mInScreen:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mRelocating:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v1

    invoke-direct {v0, v2, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-float v3, v1

    invoke-direct {v0, v3, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v5, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addToFirst(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addToFirst(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftRight()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addToLast(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addToLast(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftLeft()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    invoke-virtual {p1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method protected cancelDrag()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->addToLast(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDroppability(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public getLayoutX()F
    .locals 2

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getModeitem()Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mEditMenu:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    return-object v0
.end method

.method public getNext()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    return-object v0
.end method

.method public moveEmptyToLast()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftLeft()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->moveEmptyToLast()V

    :cond_1
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_1
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mRelocating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftLeft()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftRight()Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->setEmpty()V

    goto :goto_0
.end method

.method protected setEmpty()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    return-void
.end method

.method public setNext(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    return-void
.end method

.method public setPrevious(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    return-void
.end method

.method public shiftLeft()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mPrevious:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->setEmpty()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shiftRight()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->shiftRight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->mNext:Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->relocateItem(Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeMenuDragDropBox;->setEmpty()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
