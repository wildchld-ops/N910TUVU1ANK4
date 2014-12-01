.class public Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;
.super Landroid/view/View;
.source "PatternEffect.java"

# interfaces
.implements Lcom/sec/android/visualeffect/IEffect;


# static fields
.field public static final DIAGONAL_PATTERN:I = 0x2

.field public static final DIAMOND_A_PATTERN:I = 0x5

.field public static final DIAMOND_B_PATTERN:I = 0x6

.field public static final DIAMOND_C_PATTERN:I = 0x7

.field public static final DIAMOND_PATTERN:I = 0x0

.field public static final GLASS_PATTERN:I = 0x4

.field public static final LINE_PATTERN:I = 0x3

.field public static final OTHER_PATTERN:I = 0x9

.field public static final TRIANGLE_PATTERN:I = 0x1


# instance fields
.field private BG_INIT_LOCATION:I

.field private BRIGHTNESS_VALUE:I

.field private final FOLLOW_POINT_BG_VALUE:F

.field private final FOLLOW_POINT_MASK_VALUE:F

.field private final LEAD_POINT_VALUE:F

.field private final MOVE_BACKGROUND_VALUE_PX:I

.field private SCALE_BACKGROUND_VALUE:F

.field private TAG:Ljava/lang/String;

.field private final TWINKLE_ANIMATION_DURATION:I

.field private final TWINKLE_HEIGHT:I

.field private final TWINKLE_REPEAT_INTERVAL:I

.field private animationValue:F

.field private backgroundImg:Landroid/graphics/Bitmap;

.field private brightnessValue:F

.field private cm:Landroid/graphics/ColorMatrix;

.field private dstRect:Landroid/graphics/Rect;

.field private followPointForBg:F

.field private followPointForMask:F

.field private isTwinkle:Z

.field private leadPoint:F

.field private mTiltManager:Lcom/sec/android/visualeffect/expressme/common/TiltManager;

.field private maskCanvas:Landroid/graphics/Canvas;

.field private moveAnimator:Landroid/animation/ValueAnimator;

.field private paintBrightness:Landroid/graphics/Paint;

.field private paintDefault:Landroid/graphics/Paint;

.field private paintMask:Landroid/graphics/Paint;

.field private patternHeight:I

.field private patternImg:Landroid/graphics/Bitmap;

.field private patternWidth:I

.field private scaleValue:F

.field private srcRect:Landroid/graphics/Rect;

.field private stopTiltValue:F

.field private twinkleAnimator:Landroid/animation/ValueAnimator;

.field private twinkleElpased:J

.field private twinkleImg:Landroid/graphics/Bitmap;

.field private twinklePos:F

.field private twinkleStart:J

.field private xf:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3e99999a

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->FOLLOW_POINT_BG_VALUE:F

    const v0, 0x3e19999a

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->FOLLOW_POINT_MASK_VALUE:F

    const/high16 v0, 0x40200000

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->LEAD_POINT_VALUE:F

    const/16 v0, 0xa0

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->MOVE_BACKGROUND_VALUE_PX:I

    const/16 v0, 0x485

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TWINKLE_HEIGHT:I

    const/16 v0, 0x8fc

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TWINKLE_ANIMATION_DURATION:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TWINKLE_REPEAT_INTERVAL:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z

    const v0, -0x3b6f6000

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinklePos:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopTiltValue:F

    iput-wide v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleStart:J

    iput-wide v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleElpased:J

    const-string v0, "secVisualEffect_Pattern"

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern Constructor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/visualeffect/expressme/common/TiltManager;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/expressme/common/TiltManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->mTiltManager:Lcom/sec/android/visualeffect/expressme/common/TiltManager;

    iput p2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cm:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintMask:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintDefault:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintBrightness:Landroid/graphics/Paint;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->xf:Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Landroid/graphics/ColorMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cm:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;Landroid/graphics/ColorMatrix;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setBrightness(Landroid/graphics/ColorMatrix;F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintBrightness:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopAnimator()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinklePos:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopTiltValue:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->startAnimator()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->checkTwinkle(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    return v0
.end method

.method static synthetic access$616(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    return v0
.end method

.method static synthetic access$716(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->brightnessValue:F

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->brightnessValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    return v0
.end method

.method private cancelAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern cancelAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private checkTwinkle(J)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleStart:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleStart:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleElpased:J

    iget-wide v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleElpased:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->startTwinkle()V

    iput-wide v4, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleStart:J

    :cond_1
    return-void
.end method

.method private scaledImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/16 v3, 0xa00

    const/16 v2, 0x1e0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern setAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x57e40

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$2;-><init>(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x8fc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$3;-><init>(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private setBrightness(Landroid/graphics/ColorMatrix;F)V
    .locals 4

    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput p2, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v2, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void
.end method

.method private setTiltManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern setTiltManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->mTiltManager:Lcom/sec/android/visualeffect/expressme/common/TiltManager;

    new-instance v1, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect$1;-><init>(Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->registerTiltChangedListener(Lcom/sec/android/visualeffect/expressme/common/TiltManager$TiltChangedListener;)V

    return-void
.end method

.method private setValue()V
    .locals 4

    const/16 v3, 0xa0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern setValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->srcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    invoke-direct {v0, v2, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->dstRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintMask:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->xf:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->backgroundImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BG_INIT_LOCATION:I

    return-void
.end method

.method private startAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern startAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private stopAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern stopAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->leadPoint:F

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->moveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->animationValue:F

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->stopTiltValue:F

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cancelAnimator()V

    return-void
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->mTiltManager:Lcom/sec/android/visualeffect/expressme/common/TiltManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/expressme/common/TiltManager;->handleSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x45200000

    const/high16 v9, 0x43200000

    const/high16 v8, 0x3f800000

    const/4 v10, 0x0

    iget v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForMask:F

    iget v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BG_INIT_LOCATION:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v1, v6

    iget v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->followPointForBg:F

    iget v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BG_INIT_LOCATION:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v0, v6

    int-to-float v6, v0

    iget v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    iget v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F

    mul-float/2addr v6, v9

    int-to-float v7, v0

    add-float/2addr v6, v7

    float-to-int v4, v6

    iget v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F

    sub-float v6, v8, v6

    mul-float/2addr v6, v11

    float-to-int v5, v6

    iget v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaleValue:F

    mul-float/2addr v6, v11

    float-to-int v2, v6

    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->maskCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->backgroundImg:Landroid/graphics/Bitmap;

    neg-int v8, v1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintMask:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->backgroundImg:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->srcRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->dstRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintBrightness:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-boolean v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleImg:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinklePos:F

    iget-object v8, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintDefault:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternImg:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->paintDefault:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public patternEffectInit()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern patternEffectInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->cancelAnimator()V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternImg:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->maskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setValue()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setTiltManager()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->setAnimator()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->startAnimator()V

    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern setBackgroundImage (no twinkle)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "background == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e0

    const/16 v1, 0xa00

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pattern image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaledImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->backgroundImg:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternImg:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern setBackgroundImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->isTwinkle:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "background == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e0

    const/16 v1, 0xa00

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pattern image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->scaledImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->backgroundImg:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternImg:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleImg:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    invoke-virtual {p0, v3, v3, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public setPattern(I)V
    .locals 7

    const/16 v6, 0x82

    const/16 v5, 0x78

    const/4 v4, 0x0

    const v3, 0x3d99999a

    const v2, 0x3d75c28f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set DEFAULT_SETTING ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->patternHeight:I

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/view/View;->invalidate(IIII)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set DIAMOND_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set DIAMOND_B_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set TRIANGLE_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set DIAGONAL_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb4

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set LINE_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "set GLASS_PATTERN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->BRIGHTNESS_VALUE:I

    iput v3, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->SCALE_BACKGROUND_VALUE:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public startTwinkle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->TAG:Ljava/lang/String;

    const-string v1, "Pattern startTwinkleAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/pattern/PatternEffect;->twinkleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
