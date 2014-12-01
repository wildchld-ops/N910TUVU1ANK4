.class public Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;
.super Landroid/view/View;
.source "SpectrumEffect.java"


# static fields
.field private static final DRAWING_DEALY_TIME:J = 0x0L

.field private static final FRAC_WIDTH:F = 0.34f

.field private static final N_STEPS:I = 0x258

.field private static final RAD_CIRCLE:F = 6.2831855f


# instance fields
.field private final CIRCLE_ALPHA:I

.field private final CIRCLE_SCALE:I

.field private DONE:I

.field private R0:[F

.field private RUNNING:I

.field private final SCALE_SPEED:F

.field private final TAG:Ljava/lang/String;

.field private X:[F

.field private Y:[F

.field private a:[I

.field private backgroundColor:I

.field private bgPaint:Landroid/graphics/Paint;

.field private cX:[I

.field private cY:[I

.field private centerX:F

.field private centerY:F

.field private circleColor:I

.field private final cxRatio:I

.field private final cyRatio:I

.field private d:[F

.field private dTheta:[F

.field private dTheta0:F

.field private mHandler:Landroid/os/Handler;

.field private mSpectrumData:[F

.field private mState:I

.field private maxA:I

.field private maxCX:I

.field private maxCY:I

.field private maxPeriod:F

.field private maxRX:F

.field private maxRY:F

.field private maxTheta0:F

.field private minA:I

.field private minCX:I

.field private minCY:I

.field private minPeriod:F

.field private minRX:F

.field private minRY:F

.field private minTheta0:F

.field private numCircles:I

.field private pR:[F

.field private period:[F

.field private pixelScale:F

.field private planet:Landroid/graphics/drawable/ShapeDrawable;

.field private planetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/ShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private rX:[F

.field private rY:[F

.field private screenHeight:I

.field private screenWidth:I

.field private theta:[F

.field private theta0:[F

.field private zoomFac:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectSpectrumEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->CIRCLE_SCALE:I

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->SCALE_SPEED:F

    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->CIRCLE_ALPHA:I

    iput v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->DONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->zoomFac:F

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minA:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxA:I

    const v0, 0x3f99999a

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minPeriod:F

    const/high16 v0, 0x40a00000

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxPeriod:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minTheta0:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxTheta0:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cxRatio:I

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cyRatio:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect$1;-><init>(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mHandler:Landroid/os/Handler;

    const-string v0, "VisualEffectSpectrumEffect"

    const-string v1, "SpectrumEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenHeight:I

    const-string v0, "VisualEffectSpectrumEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "H "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    const v0, 0x3c2b92a6

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->dTheta0:F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->X:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->Y:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->dTheta:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->a:[I

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->period:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta0:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->d:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rX:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rY:[F

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cX:[I

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cY:[I

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mSpectrumData:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->bgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->newXY()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->newR()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawBackground(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenHeight:I

    int-to-float v4, v0

    move-object v0, p2

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getDirection()I
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(II)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRandomize(DD)D
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private getRandomize(FF)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getRandomize(II)I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getScreenHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method private getScreenWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method private initializeCircles()V
    .locals 6

    const v5, 0x40866666

    const v4, 0x400ccccd

    const v3, 0x3f19999a

    const-string v1, "VisualEffectSpectrumEffect"

    const-string v2, "initializeCircles "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenHeight:I

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCX:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCX:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCY:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCY:I

    iput v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRX:F

    iput v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRX:F

    iput v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRY:F

    iput v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRY:F

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->a:[I

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minA:I

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxA:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(II)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->period:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minPeriod:F

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxPeriod:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(FF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta0:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minTheta0:F

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxTheta0:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(FF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->d:[F

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getDirection()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rX:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRX:F

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRX:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(FF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rY:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRY:F

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRY:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(FF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cX:[I

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCX:I

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCX:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(II)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cY:[I

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCY:I

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCY:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getRandomize(II)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->dTheta:[F

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->d:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->dTheta0:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->period:[F

    aget v3, v3, v0

    div-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->d:[F

    aget v2, v2, v0

    neg-float v2, v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta0:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planet:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planet:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCX:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCX:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minCY:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxCY:I

    iput v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRX:F

    iput v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRX:F

    iput v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->minRY:F

    iput v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->maxRY:F

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private newR()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v2, v2, v0

    const v3, 0x3d4ccccd

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mSpectrumData:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v5, v5, v0

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private newXY()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    aget v2, v1, v0

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->dTheta:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->X:[F

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    aget v2, v2, v0

    float-to-double v2, v2

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    aget v4, v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rX:[F

    aget v4, v4, v0

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerX:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cX:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->Y:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerY:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    aget v3, v3, v0

    float-to-double v3, v3

    iget-object v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    aget v5, v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->rY:[F

    aget v5, v5, v0

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cY:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startDrawing()V
    .locals 3

    const-string v0, "VisualEffectSpectrumEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDrawing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    const-string v0, "VisualEffectSpectrumEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDrawing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopDrawing()V
    .locals 3

    iget v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->DONE:I

    iput v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    const-string v0, "VisualEffectSpectrumEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDrawing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    const-string v0, "VisualEffectSpectrumEffect"

    const-string v1, "clearEffect "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->stopDrawing()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->clearEffect()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x41800000

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->backgroundColor:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->bgPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->drawBackground(Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :cond_0
    iget v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mState:I

    iget v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->RUNNING:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->X:[F

    aget v4, v4, v1

    iget-object v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->Y:[F

    aget v5, v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v4, v4, v1

    mul-float/2addr v4, v6

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v4, v4, v1

    mul-float/2addr v4, v6

    float-to-int v0, v4

    div-int/lit8 v4, v3, 0x2

    mul-int/lit8 v2, v4, -0x1

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->circleColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->planetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    const-string v1, "VisualEffectSpectrumEffect"

    const-string v2, "onSizeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenWidth:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->getScreenHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->screenHeight:I

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerX:F

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerY:F

    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->zoomFac:F

    const v2, 0x3eae147b

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerX:F

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->a:[I

    iget v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pixelScale:F

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pixelScale:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->a:[I

    aget v3, v3, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->X:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    aget v4, v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cX:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->Y:[F

    iget v2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->centerY:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->R0:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->theta:[F

    aget v4, v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->pR:[F

    aget v3, v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->cY:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColor(II)V
    .locals 3

    const-string v0, "VisualEffectSpectrumEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->circleColor:I

    iput p2, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->backgroundColor:I

    return-void
.end method

.method public setSpectrumData([F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->numCircles:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->mSpectrumData:[F

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startEffect()V
    .locals 2

    const-string v0, "VisualEffectSpectrumEffect"

    const-string v1, "startEffect "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->initializeCircles()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/spectrum/SpectrumEffect;->startDrawing()V

    return-void
.end method
