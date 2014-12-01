.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final MUTE_VIB_DISTANCE_LVL:I = 0x190

.field private static final MUTE_VIB_DURATION:I = 0x1f4

.field private static final MUTE_VIB_TOTAL:I = 0x4

.field private static final NO_ALPHA:I = 0xff

.field private static final SLIDING_DURATION:I = 0x190

.field private static final SLIDING_FOR_MUTE_DURATION:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowedSeeBarAnimation:Z

.field private mAnimationAllowdedMax:I

.field private mAnimationTargetLevel:I

.field private mCurrentProgressLevel:I

.field private mDisabledAlpha:F

.field private mHoveringLevel:I

.field private mIsAnimationAllowdedMax:Z

.field private mIsDragging:Z

.field private mIsDraggingForSliding:Z

.field private mIsFirstSetProgress:Z

.field private mIsMuteNow:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mMuteAnimationSet:Landroid/animation/AnimatorSet;

.field private mScaledTouchSlop:I

.field private mSlidingAnimation:Landroid/animation/ValueAnimator;

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbScale:F

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field private mUseMuteAnimation:Z

.field private mUseSlidingAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationAllowdedMax:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsAnimationAllowdedMax:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->mAnimationAllowdedMax:I

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsAnimationAllowdedMax:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v3, "AbsSeekBar"

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    iput v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    iput v6, p0, Landroid/widget/AbsSeekBar;->mAnimationAllowdedMax:I

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsAnimationAllowdedMax:Z

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v3, 0x3f000000

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsSeekBar Constructor: mAllowedSeeBarAnimation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AbsSeekBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsMuteNow:Z

    return v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private initMuteAnimation()V
    .locals 14

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x8

    const/16 v9, 0x1f4

    div-int v1, v9, v6

    const/16 v0, 0x190

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_3

    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v13, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    int-to-long v9, v1

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/widget/AbsSeekBar$2;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$2;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    int-to-double v9, v0

    const-wide v11, 0x3fe3333333333333L

    mul-double/2addr v9, v11

    double-to-int v0, v9

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v8

    goto :goto_1

    :cond_2
    new-array v9, v13, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v0, v6

    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    int-to-float v8, v0

    mul-float/2addr v8, p3

    float-to-int v5, v8

    const/high16 v8, -0x80000000

    if-ne p4, v8, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_0
    move v7, p4

    add-int v1, p4, v4

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1
.end method

.method private trackHoverEvent(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    const/4 v1, 0x0

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    return-void

    :cond_0
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    const/high16 v3, 0x3f800000

    goto :goto_0

    :cond_1
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    int-to-float v6, v1

    mul-float/2addr v6, v3

    float-to-int v7, v2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    const/high16 v6, 0x3f800000

    add-float/2addr v2, v6

    :cond_0
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void

    :cond_1
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_2

    const/high16 v3, 0x3f800000

    goto :goto_0

    :cond_2
    sub-int v6, v0, v5

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    :cond_3
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_5

    const/high16 v3, 0x3f800000

    goto :goto_0

    :cond_5
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 13

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    move v7, v9

    :goto_0
    iget v10, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v5, v10, v11

    :goto_1
    if-le v7, v8, :cond_6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, v6, v5, v9}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_0
    sub-int v10, v7, v8

    div-int/lit8 v3, v10, 0x2

    if-eqz v0, :cond_1

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v11, p2, v11

    sub-int/2addr v11, v3

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v9, v3, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ProgressBar;->mProgressRect:Landroid/graphics/Rect;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getUseDualColorProgressBar()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDualColorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDualProgressStart()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsSeekBar;->mThumbScale:F

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v10, p1, v10

    iget v11, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v11, p2, v11

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v9, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/ProgressBar;->mProgressRect:Landroid/graphics/Rect;

    :cond_7
    sub-int v9, v8, v7

    div-int/lit8 v2, v9, 0x2

    if-eqz v6, :cond_1

    invoke-direct {p0, p1, v6, v5, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void

    :cond_2
    const/high16 v2, 0x437f0000

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
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

.method onHoverChanged(III)V
    .locals 0

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    move v1, v4

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    iget v4, p0, Landroid/view/View;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAdjustedRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAdjustedRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    goto :goto_1

    :cond_5
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    if-lez v0, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    :goto_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 10

    const v8, 0x461c4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    mul-float v7, p1, v8

    float-to-int v3, v7

    iget v7, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbScale:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    move v1, v5

    :goto_0
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsAnimationAllowdedMax:Z

    if-eqz v7, :cond_4

    :cond_1
    move v2, v5

    :goto_1
    if-eqz v2, :cond_7

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v7, :cond_5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    if-eqz v7, :cond_5

    if-nez v3, :cond_5

    move v7, v5

    :goto_2
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsMuteNow:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mAnimationTargetLevel:I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iget v8, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    aput v8, v7, v6

    aput v3, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsMuteNow:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v6, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v1, v6

    goto :goto_0

    :cond_4
    move v2, v6

    goto :goto_1

    :cond_5
    move v7, v6

    goto :goto_2

    :cond_6
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$QuintEaseOut;

    invoke-direct {v6}, Landroid/widget/AbsSeekBar$QuintEaseOut;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AbsSeekBar;->mAnimationTargetLevel:I

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000

    div-float v0, v7, v8

    const/high16 v7, 0x41a00000

    cmpl-float v7, v0, v7

    if-lez v7, :cond_8

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-nez v7, :cond_9

    if-nez v1, :cond_9

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_9
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mCurrentProgressLevel:I

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-direct {p0, v5, v4, p1, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method

.method public onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    :goto_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    int-to-float v2, p1

    const v3, 0x461c4000

    div-float v0, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onStopDraggingState()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopDraggingState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    if-eqz v3, :cond_8

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    :cond_8
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    :pswitch_3
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDraggingForSliding:Z

    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sparse-switch p1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsFirstSetProgress:Z

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v1, v2

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a00000

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->mAnimationAllowdedMax:I

    if-gt p1, v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsAnimationAllowdedMax:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMuteAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseMuteAnimation:Z

    :cond_0
    return-void
.end method

.method public setSlidingAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mAllowedSeeBarAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mUseSlidingAnimation:Z

    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startMuteAnimation()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
