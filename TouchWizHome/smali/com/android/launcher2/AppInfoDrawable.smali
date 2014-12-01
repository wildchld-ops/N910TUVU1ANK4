.class public Lcom/android/launcher2/AppInfoDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AppInfoDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppInfoDrawable$BulgeAnimationListener;
    }
.end annotation


# static fields
.field private static final SCALE_DURATION:I = 0x96

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/AppInfoDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfo:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDirection:F

.field private mIsAnimatingTranslate:Z

.field private mIsRepeat:Z

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mPreviousTranslateValue:F

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mTranslateAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateDy:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/launcher2/AppInfoDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppInfoDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/AppInfoDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    iput-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    iput-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    iput-object p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->initAnimations()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AppInfoDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/AppInfoDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    return p1
.end method

.method private initAnimations()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setScaleAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v1, Lcom/android/launcher2/AppInfoDrawable;->SCALE_FACTOR:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const v0, 0x3f933333

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method private startTranslateAnimation()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    new-instance v1, Lcom/android/launcher2/AppInfoDrawable$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/AppInfoDrawable$2;-><init>(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method

.method private stopCurrentAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    aget v5, p1, v1

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    iput-boolean v4, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    invoke-direct {p0, v3}, Lcom/android/launcher2/AppInfoDrawable;->setScaleAnimation(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->startTranslateAnimation()V

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v3

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/launcher2/AppInfoDrawable;->setScaleAnimation(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->stopCurrentAnimation()V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setCancelAppinfoDummy(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    :cond_0
    return-void
.end method

.method public setCancelAppinfoTranslate(F)V
    .locals 9

    const/high16 v8, -0x40800000

    const/high16 v7, -0x3f600000

    const/high16 v6, 0x40a00000

    const/high16 v3, 0x41400000

    move v4, p1

    const/high16 v5, 0x41400000

    mul-float/2addr p1, v5

    const/high16 v2, 0x40a00000

    iget v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    sub-float v0, p1, v5

    iput p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v0

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    :cond_0
    :goto_0
    cmpl-float v5, v1, v6

    if-gtz v5, :cond_1

    cmpg-float v5, v1, v7

    if-gez v5, :cond_3

    :cond_1
    cmpl-float v5, v1, v6

    if-lez v5, :cond_2

    sub-float v5, v1, v6

    sub-float v1, v6, v5

    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    goto :goto_0

    :cond_2
    cmpg-float v5, v1, v7

    if-gez v5, :cond_0

    add-float v5, v1, v6

    sub-float v1, v7, v5

    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 v5, 0x3f800000

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->startTranslateAnimation()V

    :cond_4
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6

    const/high16 v5, 0x40000000

    const/high16 v4, 0x3f800000

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0
.end method
