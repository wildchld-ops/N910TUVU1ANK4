.class public Lcom/android/keyguard/sec/MassTensionUnlockView;
.super Landroid/widget/FrameLayout;
.source "MassTensionUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final CIRCLE_MAX_ALPHA:I

.field private final CIRCLE_MAX_ALPHA_FACTOR:F

.field private final CIRCLE_MIN_ALPHA:I

.field protected TAG:Ljava/lang/String;

.field private final TENSION_BETWEEN_FACTOR:I

.field private final TENSION_CIRCLE_PLACE_ADJUST:I

.field private final TENSION_LINE_DELETE:I

.field private final TENSION_LINE_MIN:F

.field private final TENSION_RELEASE_FACTOR:F

.field protected final UNLOCK_DRAG_THRESHOLD:D

.field protected final UNLOCK_RELEASE_THRESHOLD:D

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field protected final UNLOCK_TEMP_THRESHOLD:D

.field private betweenLineX:I

.field private betweenLineY:I

.field private degree:D

.field private diffPressTime:J

.field private isIgnoreTouch:Z

.field private isSystemSoundChecked:Z

.field private lineSize:F

.field private mCircleCenterDot:Landroid/widget/ImageView;

.field private mCircleCenterDotAfter:Landroid/widget/ImageView;

.field private mCircleCenterDotAnim:Landroid/view/animation/Animation;

.field mCircleCenterDotFromPoint:Landroid/graphics/Point;

.field private mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

.field mCircleCenterDotToPoint:Landroid/graphics/Point;

.field private mCircleFinger:Landroid/widget/ImageView;

.field private mCircleFingerAfter:Landroid/widget/ImageView;

.field private mCircleFingerAnim:Landroid/view/animation/Animation;

.field private mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

.field protected mCircleFingerRoot:Landroid/widget/RelativeLayout;

.field private mCircleLine:Landroid/widget/ImageView;

.field private mCircleLineAfter:Landroid/widget/ImageView;

.field protected mCircleLineRoot:Landroid/widget/RelativeLayout;

.field private mCircleOuter:Landroid/widget/ImageView;

.field private mCircleOuterAfter:Landroid/widget/ImageView;

.field private mCircleOuterAnim:Landroid/view/animation/Animation;

.field protected mCircleOuterRoot:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mDistanceRatio:D

.field private mLineAnim:Landroid/view/animation/ScaleAnimation;

.field private final mLockSoundVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field protected mX:F

.field protected mY:F

.field private outerTensionFactorX:D

.field private outerTensionFactorY:D

.field private prevPressTime:J

.field private radian:D

.field private sounds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x3f4ccccd

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "TensionLockScreen"

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const/16 v2, 0xff

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MAX_ALPHA:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MIN_ALPHA:I

    const-wide v2, 0x3ff3333340000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_TEMP_THRESHOLD:D

    const-wide v2, 0x3ff6666660000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v2, 0x4000ccccc0000000L

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_DRAG_THRESHOLD:D

    iput v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_RELEASE_FACTOR:F

    iput v5, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->CIRCLE_MAX_ALPHA_FACTOR:F

    const/16 v2, 0x28

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_BETWEEN_FACTOR:I

    iput v4, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_MIN:F

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_CIRCLE_PLACE_ADJUST:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->UNLOCK_SOUND_PLAY_TIME:J

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    iput-wide v7, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    iput-wide v7, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    iput-boolean v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    iput-object p1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001a

    invoke-virtual {v0, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLayout()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setAnimation()V

    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-wide/high16 v2, 0x4024000000000000L

    int-to-float v4, v1

    const/high16 v5, 0x41a00000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassTensionUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/MassTensionUnlockView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/MassTensionUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->createBouncerAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private checkSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearAllViews()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private createBouncerAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    iget v2, v6, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    iget v4, v6, Landroid/graphics/Point;->y:I

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v6, v3, v1

    int-to-float v6, v6

    sub-int v7, v4, v2

    int-to-float v7, v7

    invoke-direct {v5, v8, v6, v8, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v6, Lcom/android/keyguard/sec/MassTensionUnlockView$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/MassTensionUnlockView$1;-><init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private playSound()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->sounds:I

    iget v2, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLockSoundVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private setAnimation()V
    .locals 2

    const v1, 0x7f040008

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotReleaseAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method private setLayout()V
    .locals 1

    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    const v0, 0x7f0b00a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    return-void
.end method

.method private setLineAnim(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    const/high16 v1, 0x3f800000

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p1, p2, v1, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/android/keyguard/sec/MassTensionUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/MassTensionUnlockView$2;-><init>(Lcom/android/keyguard/sec/MassTensionUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private setOuterCircle(Landroid/view/View;D)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # D

    const/16 v1, 0xff

    const-wide/high16 v2, 0x4049000000000000L

    const-wide v4, 0x406fe00000000000L

    mul-double/2addr v4, p2

    const-wide v6, 0x3fe99999a0000000L

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v0, v2

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setSound()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v2, "show mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    const-string v2, "/system/media/audio/ui/Tap_tension.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->sounds:I

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->isIgnoreTouch:Z

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0xff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotToPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->playSound()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v9, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    int-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v12, v18, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v18, v10, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setOuterCircle(Landroid/view/View;D)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v4, v0

    const/high16 v18, -0x40800000

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->radian:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->radian:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L

    div-double v18, v18, v20

    const-wide v20, 0x4066800000000000L

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    add-int/lit8 v20, v20, -0x5

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x4066800000000000L

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v14, v18, v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    const/high16 v21, 0x42200000

    div-float v20, v20, v21

    add-float v19, v19, v20

    sub-float v15, v18, v19

    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff3333340000000L

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorX:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v14, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->outerTensionFactorY:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    mul-float v18, v14, v14

    mul-float v19, v15, v15

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TENSION_LINE_DELETE:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFinger:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleOuterAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    const/high16 v20, 0x42200000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->prevPressTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->diffPressTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x258

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->playSound()V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff6666660000000L

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mDistanceRatio:D

    move-wide/from16 v18, v0

    const-wide v20, 0x4000ccccc0000000L

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleFingerReleaseAnim:Landroid/view/animation/Animation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLine:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineRoot:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->degree:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setRotation(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->lineSize:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setLineAnim(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleLineAfter:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mLineAnim:Landroid/view/animation/ScaleAnimation;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDotFromPoint:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->betweenLineY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/MassTensionUnlockView;->mCircleCenterDot:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public playLockSound()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->clearAllViews()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/MassTensionUnlockView;->TAG:Ljava/lang/String;

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public show()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->checkSound()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/MassTensionUnlockView;->setSound()V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 0
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
