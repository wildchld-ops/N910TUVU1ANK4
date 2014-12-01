.class public abstract Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.source "AbsAirButtonAnimateView.java"


# static fields
.field private static final CLOSE_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/airbutton_close.ogg"

.field private static final OPEN_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/airbutton_open.ogg"

.field protected static sAirbuttonSounds:Landroid/media/SoundPool;

.field private static sCloseSoundId:I

.field private static sOpenSoundId:I


# instance fields
.field protected final ANIMATION_DURATION:I

.field private final SCALE_FOCUSED:F

.field private final SCALE_NORMAL:F

.field private final TAG:Ljava/lang/String;

.field protected mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

.field private mHoverExitAnimator:[Landroid/animation/AnimatorSet;

.field protected mIsFinishing:Z

.field protected mIsSpenSoundOn:Z

.field protected mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mStreamSoundId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sput v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    sput v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    const-string v2, "AbsAirButtonAnimateView"

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->TAG:Ljava/lang/String;

    const/16 v2, 0x50

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->ANIMATION_DURATION:I

    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->SCALE_NORMAL:F

    const v2, 0x3f8ccccd

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->SCALE_FOCUSED:F

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsFinishing:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsSpenSoundOn:Z

    new-instance v2, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$1;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v2, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->loadSounds()V

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v2, v2, [Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v2, v2, [Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    sget v2, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mUspLevel:I

    if-ne v2, v3, :cond_0

    iget v2, p3, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_sound"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spen_feedback_sound_air_command"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsSpenSoundOn:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z

    move-result v0

    return v0
.end method

.method private loadSounds()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    :cond_0
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/airbutton_open.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    if-nez v0, :cond_1

    const-string v0, "AbsAirButtonAnimateView"

    const-string v1, "failed to load sound from /system/media/audio/ui/airbutton_open.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/ui/airbutton_close.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    sget v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    if-nez v0, :cond_2

    const-string v0, "AbsAirButtonAnimateView"

    const-string v1, "failed to load sound from /system/media/audio/ui/airbutton_close.ogg"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private playYPositionAdjustAnimationIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayYPositionAdjustAnimation()V

    :cond_0
    return-void
.end method

.method private shouldSendItemSelectedNotiFirst()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-eq v2, v1, :cond_2

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected abstract generateAndPlayFinishAnimation()V
.end method

.method protected abstract generateAndPlayStartAnimation()V
.end method

.method protected generateAndPlayYPositionAdjustAnimation()V
    .locals 0

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v1, -0x1

    if-eqz v2, :cond_5

    add-int/lit8 v3, p1, -0x1

    sub-int v1, v3, p2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    sub-int v0, v3, v4

    add-int/lit8 v3, p1, -0x1

    if-ne p2, v3, :cond_4

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    :cond_2
    :goto_2
    move p2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-lt p2, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    move v1, p2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v3, :cond_2

    add-int/lit8 v3, p1, -0x1

    if-ne p2, v3, :cond_6

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-lt p2, v3, :cond_2

    add-int/lit8 v1, p2, 0x1

    goto :goto_2
.end method

.method protected getScaleAnimation(IFF)Landroid/animation/AnimatorSet;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v3, v3, p1

    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    aput p2, v5, v6

    aput p3, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v3, v3, p1

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    aput p2, v5, v6

    aput p3, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method protected onFinishing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsFinishing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayFinishAnimation()V

    return-void
.end method

.method protected onHoverEnter(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverEnterAnimation(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onHoverExit(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayoutChanged()V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initAllViewDelta()V

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->generateAndPlayStartAnimation()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setStartViewIdx(I)V

    return-void
.end method

.method protected playCloseSound()V
    .locals 7

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsSpenSoundOn:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sCloseSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    goto :goto_0
.end method

.method protected playOpenSound()V
    .locals 7

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mIsSpenSoundOn:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    sget-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->sOpenSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStreamSoundId:I

    goto :goto_0
.end method

.method public reAdjustViewYPosition(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->reAdjustViewYPosition(II)V

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playYPositionAdjustAnimationIfNeeded()V

    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0

    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    const/high16 v1, 0x3f800000

    const v2, 0x3f8ccccd

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->getScaleAnimation(IFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverEnterAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    const v1, 0x3f8ccccd

    const/high16 v2, 0x3f800000

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->getScaleAnimation(IFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mHoverExitAnimator:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
