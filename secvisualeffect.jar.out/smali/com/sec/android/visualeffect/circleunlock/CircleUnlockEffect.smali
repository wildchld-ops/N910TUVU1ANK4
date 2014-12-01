.class public Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# instance fields
.field private final ARROW_ANIMATION_DURATION:I

.field private final DBG:Z

.field private final IN_ANIMATION_DURATION:I

.field private final IN_ANIMATION_DURATION_FOR_AFFORDANCE:I

.field private final OUT_ANIMATION_DURATION:I

.field private final OUT_ANIMATION_DURATION_FOR_AFFORDANCE:I

.field private final SHOWING_DURATION_FOR_AFFORDANCE:I

.field private final TAG:Ljava/lang/String;

.field affordanceX:F

.field affordanceY:F

.field private arrow:Landroid/widget/ImageView;

.field private arrowAlphaMax:F

.field private arrowAnimationToggle:Z

.field private arrowAnimator:Landroid/animation/ValueAnimator;

.field private arrowImageId:I

.field private circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private circleGroup:Landroid/widget/FrameLayout;

.field private circleInAnimator:Landroid/animation/ValueAnimator;

.field private circleOutAnimator:Landroid/animation/ValueAnimator;

.field private circleUnlockMaxHeight:I

.field private circleUnlockMaxRadius:I

.field private circleUnlockMaxWidth:I

.field private circleUnlockMinRadius:I

.field private circleUnlockMinWidth:I

.field private currentLockSequenceNumber:I

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private innerStrokeWidth:I

.field private isForAffordance:Z

.field private isForShortcut:Z

.field private isUnlocked:Z

.field private lockImageView:Landroid/widget/ImageView;

.field private lockSequenceImageId:[I

.field private lockSequenceTotal:I

.field private mContext:Landroid/content/Context;

.field private outerStrokeWidth:I

.field private startX:F

.field private startY:F

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;III[II)V
    .locals 5

    const/16 v4, 0x29a

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->DBG:Z

    iput v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    iput v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    iput v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iput v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    iput v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->IN_ANIMATION_DURATION:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->OUT_ANIMATION_DURATION:I

    iput v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->IN_ANIMATION_DURATION_FOR_AFFORDANCE:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->OUT_ANIMATION_DURATION_FOR_AFFORDANCE:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->SHOWING_DURATION_FOR_AFFORDANCE:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->ARROW_ANIMATION_DURATION:I

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    iput p6, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowImageId:I

    iput p2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    invoke-direct {p0, p6, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->getResourceImageSize(IZ)I

    move-result v0

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->outerStrokeWidth:I

    iput p4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxRadius:I

    iput-object p5, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    array-length v0, p5

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrowImageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleUnlockMaxWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleUnlockMinWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outerStrokeWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "innerStrokeWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockSequenceTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setLayout()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAnimator()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    return v0
.end method

.method private cancelAllAnimator()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->resetAnimatorAfterAffordance()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private getResourceImageSize(IZ)I
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method

.method private resetAnimatorAfterAffordance()V
    .locals 5

    const-wide/16 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$1;-><init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$2;-><init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$3;-><init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->resetAnimatorAfterAffordance()V

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$4;-><init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect$5;-><init>(Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private setCircleGroupXY(FF)V
    .locals 4

    const/high16 v3, 0x40000000

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, p1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v1, p2, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private setImageInLockImageView(F)V
    .locals 3

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    :cond_0
    return-void
.end method

.method private setLayout()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    iget v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->outerStrokeWidth:I

    iget v5, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-direct {p0, v1, v10}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->getResourceImageSize(IZ)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-direct {p0, v1, v8}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->getResourceImageSize(IZ)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v1, v1, v8

    invoke-direct {p0, v1, v10}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->getResourceImageSize(IZ)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget-object v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v1, v1, v8

    invoke-direct {p0, v1, v8}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->getResourceImageSize(IZ)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    int-to-float v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private startAnimatorForAffordance(JFF)V
    .locals 7

    const-wide/16 v5, 0x29a

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->changeModeForCircleUnlock()V

    iput v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iput v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    iput v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    iput v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    iput v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    iput v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget v3, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-virtual {v2, v3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    iget v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, p3, p4}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setCircleGroupXY(FF)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-long v2, p1, v5

    const-wide/16 v4, -0xc8

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/QuintEaseIn;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public changeModeForCircleUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->setIsForShortcut(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->setCircleMinWidth(I)V

    :cond_0
    return-void
.end method

.method public changeModeForShorcutButton(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->setIsForShortcut(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    add-int/lit8 v1, p1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->setCircleMinWidth(I)V

    :cond_0
    return-void
.end method

.method public clearEffect()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "VisualEffectCircleUnlockEffect"

    const-string v8, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    iget-boolean v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    if-eqz v7, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startX:F

    iget v7, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startY:F

    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startX:F

    iget v8, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startY:F

    invoke-direct {p0, v7, v8}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setCircleGroupXY(FF)V

    iget-object v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iget-object v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_1
    const/4 v7, 0x0

    return v7

    :cond_1
    iput v5, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startX:F

    iput v6, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startY:F

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startX:F

    sub-float v0, v5, v7

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startY:F

    sub-float v1, v6, v7

    float-to-double v7, v0

    const-wide/high16 v9, 0x4000000000000000L

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v9, v1

    const-wide/high16 v11, 0x4000000000000000L

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    iget v8, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMaxRadius:I

    iget v9, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v4, v7, v8

    const/4 v7, 0x0

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    const/4 v4, 0x0

    :cond_3
    const/high16 v7, 0x3f800000

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    const/high16 v4, 0x3f800000

    :cond_4
    iput v4, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iget-object v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circle:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;

    iget v8, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-virtual {v7, v8}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-direct {p0, v7}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    iput v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    iget v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iput v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    iget-object v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    iget-boolean v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1
.end method

.method public setImageResources(I)V
    .locals 0

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 4

    const/high16 v3, 0x40000000

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->affordanceX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->affordanceY:F

    iget v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->affordanceX:F

    iget v1, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->affordanceY:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->startAnimatorForAffordance(JFF)V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    return-void
.end method
