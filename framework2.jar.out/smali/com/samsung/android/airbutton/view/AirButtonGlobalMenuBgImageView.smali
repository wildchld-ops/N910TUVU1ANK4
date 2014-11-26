.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;
.super Landroid/widget/ImageView;
.source "AirButtonGlobalMenuBgImageView.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ARC_BASE_ANGLE:F

.field private final ARC_MAX_ANGLE:F

.field private final TAG:Ljava/lang/String;

.field private mArcAnimator:Landroid/animation/ObjectAnimator;

.field private mArcPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimatingArc:F

.field private mImageBoundary:Landroid/graphics/RectF;

.field private mImageCenterX:F

.field private mImageCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v2, -0x3ca10000

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "AirButtonGlobalMenuBgImageView"

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ANIMATION_DURATION:I

    const/high16 v0, 0x42a00000

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ARC_BASE_ANGLE:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->ARC_MAX_ANGLE:F

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mContext:Landroid/content/Context;

    const v0, 0x10800d8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-string v1, "animationArc"

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private initVariables()V
    .locals 4

    const/high16 v3, -0x3d380000

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterX:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageCenterY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mImageBoundary:Landroid/graphics/RectF;

    const/high16 v2, 0x42a00000

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setAnimationArc(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mCurrentAnimatingArc:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->initVariables()V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3c688000
    .end array-data
.end method

.method public startOpenAnimation()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->initVariables()V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->mArcAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x3c688000
        0x0
    .end array-data
.end method
