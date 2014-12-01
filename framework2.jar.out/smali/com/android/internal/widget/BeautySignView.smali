.class public Lcom/android/internal/widget/BeautySignView;
.super Lcom/android/internal/widget/SignView;
.source "BeautySignView.java"


# static fields
.field protected static final DBG_BEAUTY:Z = false

.field protected static final DBG_TOUCH:Z

.field private static final MID:F = 0.5f

.field private static SPEED_MAX:F = 0.0f

.field private static SPEED_MIN:F = 0.0f

.field protected static final TAG:Ljava/lang/String; = "BeautySignView"

.field protected static final TOUCH_TOLERANCE_AGAIN:F = 10.0f

.field private static VELOCITY_FILTER_WEIGHT:F


# instance fields
.field private MAX_WIDTH:I

.field private mBeautyEffectInputData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/SignView$SignatureInput;",
            ">;"
        }
    .end annotation
.end field

.field private mBezierEnabled:Z

.field protected mBezierX:F

.field protected mBezierY:F

.field private mCurrentEndPoint:Landroid/graphics/Point;

.field private mCurrentPointTime:J

.field private mCurrentStrokeWidth:F

.field private mInitWidthVarRatio:Z

.field private mLastDrawPoint:Landroid/graphics/Point;

.field private mLastPointTime:J

.field private mLastStrokeWidth:F

.field private mLastVelocity:F

.field private mMidControlPoint:Landroid/graphics/Point;

.field private mOrignialLineSmooth:Z

.field private mPrevious:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    const v0, 0x3e4ccccd

    sput v0, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    const/high16 v0, 0x40a00000

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    const/high16 v0, 0x3f800000

    sput v0, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    return-void
.end method

.method private addToPathForDrawing(I)V
    .locals 16

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/SignView;->mX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/SignView;->mY:F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v12, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v12, :cond_0

    const-string v12, "BeautySignView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addToPathForDrawing from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v7, p1

    :goto_0
    if-ge v7, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v10, v1, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    iget v11, v1, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    sub-float v12, v10, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v12, v11, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-wide v12, v1, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    const/high16 v12, 0x41200000

    cmpl-float v12, v5, v12

    if-gez v12, :cond_1

    const/high16 v12, 0x41200000

    cmpl-float v12, v6, v12

    if-ltz v12, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    add-float v13, v10, v3

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    float-to-int v13, v3

    float-to-int v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/widget/BeautySignView;->getVelocityFrom(Landroid/graphics/Point;)F

    move-result v9

    sget v12, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f800000

    sget v14, Lcom/android/internal/widget/BeautySignView;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    mul-float/2addr v13, v14

    add-float v9, v12, v13

    sget v12, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    cmpl-float v12, v9, v12

    if-lez v12, :cond_2

    sget v9, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    :cond_2
    sget v12, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    cmpg-float v12, v9, v12

    if-gez v12, :cond_3

    sget v9, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/widget/BeautySignView;->getStrokeWidth(F)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    const v8, 0x3e4ccccd

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3e4ccccd

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    const v12, 0x3f99999a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    :cond_4
    :goto_2
    move v3, v10

    move v4, v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SignView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/internal/widget/BeautySignView;->drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    float-to-int v13, v10

    float-to-int v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    add-float v13, v10, v3

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    add-float v14, v11, v4

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    :cond_7
    const v12, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SignView;->mX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/widget/SignView;->mY:F

    return-void
.end method

.method private distanceTo(Landroid/graphics/Point;)F
    .locals 4

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawBeautyEffect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 13

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v7, p4, p3

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v0, v10

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v0, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v0, v10

    const/4 v1, 0x0

    :goto_0
    float-to-int v10, v0

    if-ge v1, v10, :cond_0

    int-to-float v10, v1

    div-float v3, v10, v0

    mul-float v4, v3, v3

    const/high16 v10, 0x3f800000

    sub-float v5, v10, v3

    mul-float v6, v5, v5

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float v8, v6, v10

    const/high16 v10, 0x40000000

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float v9, v6, v10

    const/high16 v10, 0x40000000

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    mul-float v10, v3, v7

    add-float v10, v10, p3

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v8, v9, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private getStrokeWidth(F)F
    .locals 8

    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000

    mul-float v0, v5, v6

    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->MAX_WIDTH:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd

    mul-float v1, v5, v6

    sub-float v5, v1, v0

    sget v6, Lcom/android/internal/widget/BeautySignView;->SPEED_MAX:F

    sget v7, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    sget v5, Lcom/android/internal/widget/BeautySignView;->SPEED_MIN:F

    mul-float/2addr v5, v2

    sub-float v3, v0, v5

    mul-float v5, v2, p1

    add-float v4, v5, v3

    return v4
.end method

.method private getVelocityFrom(Landroid/graphics/Point;)F
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    iget-wide v4, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/BeautySignView;->distanceTo(Landroid/graphics/Point;)F

    move-result v2

    div-float v0, v2, v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    return v0
.end method


# virtual methods
.method protected clearInDoAddSign()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected clearInDoVerifySign()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method doBezier(IFFFFJF)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v20, v0

    add-float v1, p4, p2

    const/high16 v2, 0x40000000

    div-float v21, v1, v2

    add-float v1, p5, p3

    const/high16 v2, 0x40000000

    div-float v22, v1, v2

    const/high16 v1, 0x3f000000

    mul-float v1, v1, v17

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float v2, v2, v19

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float v2, v2, v21

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float v3, v1, v2

    const/high16 v1, 0x3f000000

    mul-float v1, v1, v18

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float v2, v2, v20

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float v2, v2, v22

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float v4, v1, v2

    move-object/from16 v0, v23

    iget-wide v5, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_0

    const-string v1, "BeautySignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2nd point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v11, v21

    move/from16 v12, v22

    move-wide/from16 v13, p6

    move/from16 v16, p8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v15, 0x2

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_1

    const-string v1, "BeautySignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .locals 9

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    iput p2, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    iput p3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    iget-wide v0, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-wide v1, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long v4, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v10, v0, v1

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v0, :cond_0

    const-string v0, "BeautySignView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert historical event first ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v3, v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    float-to-int v1, p2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    float-to-int v1, p3

    if-eq v0, v1, :cond_4

    float-to-int v1, p2

    float-to-int v2, p3

    iget-wide v3, p0, Lcom/android/internal/widget/SignView;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/BeautySignView;->handleMoveEventWithBezier(IIJF)V

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_4
    invoke-direct {p0, v8}, Lcom/android/internal/widget/BeautySignView;->addToPathForDrawing(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected handleActionUp(Landroid/view/MotionEvent;FF)V
    .locals 9

    iget-object v8, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/SignView$SignatureInput;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long v4, v1, v3

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    return-void
.end method

.method protected handleMoveEventWithBezier(IIJF)V
    .locals 15

    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_0

    const-string v1, "BeautySignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMoveEventWithBezier ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x2

    if-lt v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-nez v1, :cond_1

    iget v1, v14, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget v1, v11, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    :cond_1
    move/from16 v0, p1

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move/from16 v0, p2

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x41a00000

    cmpl-float v1, v12, v1

    if-gez v1, :cond_2

    const/high16 v1, 0x41a00000

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_6

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mOrignialLineSmooth:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_3

    const-string v1, "BeautySignView"

    const-string v3, "No apply Bezier"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    move/from16 v0, p2

    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    const/4 v7, 0x2

    move-object v2, p0

    move-wide/from16 v5, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move/from16 v0, p1

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move/from16 v0, p2

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    :goto_1
    return-void

    :cond_4
    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_5

    const-string v1, "BeautySignView"

    const-string v3, "Apply Bezier"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v3, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    iget v4, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    move-object v1, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/BeautySignView;->doBezier(IFFFFJF)V

    goto :goto_0

    :cond_6
    sget-boolean v1, Lcom/android/internal/widget/BeautySignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_7

    const-string v1, "BeautySignView"

    const-string v3, "Just save this point"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    const/4 v9, 0x2

    move-object v4, p0

    move-wide/from16 v7, p3

    move/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    int-to-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierX:F

    move/from16 v0, p2

    int-to-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierY:F

    goto :goto_1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mBezierEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/BeautySignView;->mOrignialLineSmooth:Z

    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastStrokeWidth:F

    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentStrokeWidth:F

    iput v2, p0, Lcom/android/internal/widget/BeautySignView;->mLastVelocity:F

    iput-wide v3, p0, Lcom/android/internal/widget/BeautySignView;->mLastPointTime:J

    iput-wide v3, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentPointTime:J

    iput-boolean v1, p0, Lcom/android/internal/widget/BeautySignView;->mInitWidthVarRatio:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mCurrentEndPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mMidControlPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mLastDrawPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mPrevious:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/BeautySignView;->mBeautyEffectInputData:Ljava/util/ArrayList;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mSignatureVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignBmpWrite:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
