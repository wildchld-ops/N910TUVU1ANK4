.class public Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;
.super Landroid/widget/FrameLayout;
.source "GradientBarEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;
    }
.end annotation


# instance fields
.field private final BAR_TOTAL:I

.field private final BAR_WIDTH:I

.field private final COLOR_CHANGE_SPEED:F

.field private final COLOR_TOTAL:I

.field private final DRAWING_DELAY_TIME:I

.field private final LOOP:D

.field private final SPEED:F

.field private final SPEED_BETWEEN_BAR:F

.field private final TAG:Ljava/lang/String;

.field private final X_MOVE_ELASTIC_INTENSITY:F

.field private final X_MOVE_INTENSITY:F

.field private final X_MOVE_SPEED:F

.field private barArray:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

.field private bgAlphaCount:I

.field private final bgColor:[[I

.field private bgNavyShader:Landroid/graphics/LinearGradient;

.field private bgPaint:Landroid/graphics/Paint;

.field private bgWhiteShader:Landroid/graphics/LinearGradient;

.field private colorTrans:[[F

.field private currentColorIndex:I

.field private currentGradientColor:[I

.field private easeElasticXOffset:[F

.field private easeXOffset:[F

.field private effectHeight:I

.field private effectWidth:I

.field private final gradientColor:[[I

.field private isColorChanging:Z

.field private isDrawing:Z

.field private isXOffsetChanging:Z

.field private mHandler:Landroid/os/Handler;

.field private radian:D

.field private xMoveRangeRatio:[F

.field private xOffset:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectExpressMeGradientBar"

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->TAG:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->COLOR_TOTAL:I

    iput v6, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->BAR_TOTAL:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->BAR_WIDTH:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->DRAWING_DELAY_TIME:I

    new-array v0, v4, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->gradientColor:[[I

    new-array v0, v4, [[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v5

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v8

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgColor:[[I

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->SPEED:F

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->X_MOVE_SPEED:F

    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->X_MOVE_INTENSITY:F

    const v0, 0x3f266666

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->X_MOVE_ELASTIC_INTENSITY:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->SPEED_BETWEEN_BAR:F

    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->COLOR_CHANGE_SPEED:F

    const-wide v2, 0x401921fb54442d18L

    iput-wide v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->LOOP:D

    iput v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I

    const/16 v0, 0xa00

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    iput v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentColorIndex:I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentGradientColor:[I

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xOffset:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeXOffset:[F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeElasticXOffset:[F

    const/4 v0, 0x3

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xMoveRangeRatio:[F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isColorChanging:Z

    iput-boolean v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isXOffsetChanging:Z

    new-array v0, v6, [Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->barArray:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$1;-><init>(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->mHandler:Landroid/os/Handler;

    const-string v0, "VisualEffectExpressMeGradientBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GradientBarEffect Constructor : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    int-to-float v4, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgColor:[[I

    aget-object v5, v2, v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgNavyShader:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    int-to-float v4, v2

    iget-object v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgColor:[[I

    aget-object v5, v2, v8

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgWhiteShader:Landroid/graphics/LinearGradient;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->setLayout()V

    sget-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->NAVY:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->setColor(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0xa7ff84
        -0x29565
    .end array-data

    :array_1
    .array-data 4
        -0xe5bf32
        -0xfc0952
    .end array-data

    :array_2
    .array-data 4
        -0xdafff9
        -0xa3f3c3
        -0xddfffa
    .end array-data

    :array_3
    .array-data 4
        -0xf9f1be
        -0xfac8b6
        -0xf7eec6
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeColor()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isColorChanging:Z

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x2

    new-array v5, v12, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v12, 0x2

    if-ge v4, v12, :cond_2

    const/4 v12, 0x1

    aput-boolean v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v12, 0x2

    if-ge v6, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->gradientColor:[[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentColorIndex:I

    aget-object v12, v12, v13

    aget v9, v12, v6

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x0

    aget v14, v12, v13

    int-to-float v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v15, v15, v16

    const/high16 v16, 0x41f00000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x1

    aget v14, v12, v13

    int-to-float v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-float v15, v15, v16

    const/high16 v16, 0x41f00000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x2

    aget v14, v12, v13

    int-to-float v15, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    move-object/from16 v16, v0

    aget-object v16, v16, v6

    const/16 v17, 0x2

    aget v16, v16, v17

    sub-float v15, v15, v16

    const/high16 v16, 0x41f00000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    aput v14, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v12, v12, v6

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentGradientColor:[I

    const/16 v13, 0xff

    invoke-static {v13, v7, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    aput v13, v12, v6

    if-ne v7, v11, :cond_3

    if-ne v3, v10, :cond_3

    if-ne v1, v8, :cond_3

    const/4 v12, 0x0

    :goto_3
    aput-boolean v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_3
    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    const/4 v12, 0x2

    if-ge v4, v12, :cond_6

    aget-boolean v12, v5, v4

    if-eqz v12, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-nez v2, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isColorChanging:Z

    goto/16 :goto_0
.end method

.method private changeXOffset()V
    .locals 8

    const/4 v7, 0x7

    iget-boolean v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isXOffsetChanging:Z

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xOffset:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeXOffset:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeElasticXOffset:[F

    const/high16 v4, 0x41200000

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeElasticXOffset:[F

    aget v5, v5, v2

    const v6, 0x3f266666

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeXOffset:[F

    aget v4, v3, v2

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeElasticXOffset:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeElasticXOffset:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v3, 0x3d4ccccd

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isXOffsetChanging:Z

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_0

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeXOffset:[F

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xOffset:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawBg(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0xff

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    if-le v0, v2, :cond_0

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private setLayout()V
    .locals 8

    const/high16 v6, 0x40400000

    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xMoveRangeRatio:[F

    int-to-float v2, v1

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v6, v2

    div-float/2addr v2, v6

    const v3, 0x3f19999a

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v7, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->barArray:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

    new-instance v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

    const/16 v2, 0x17

    iget v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectHeight:I

    mul-int/lit8 v4, v1, 0x17

    sget-object v5, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->ONE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;-><init>(IIIILcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;)V

    aput-object v0, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStartVariables()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v1, v1, v0

    aput v3, v1, v4

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->colorTrans:[[F

    aget-object v1, v1, v0

    aput v3, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    return-void
.end method

.method private setXOffset(F)V
    .locals 4

    iget v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->effectWidth:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x17

    add-int/lit8 v3, v3, 0xb

    int-to-float v0, v3

    sub-float v1, v0, p1

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xMoveRangeRatio:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xOffset:[F

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setXOffsetDefault()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->xOffset:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearEffect()V
    .locals 2

    const-string v0, "VisualEffectExpressMeGradientBar"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->stopEffect()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isXOffsetChanging:Z

    if-nez v0, :cond_1

    const-string v1, "VisualEffectExpressMeGradientBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent ACTION_DOWN : x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rawX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->setXOffset(F)V

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->setXOffsetDefault()V

    const-string v1, "VisualEffectExpressMeGradientBar"

    const-string v2, "handleTouchEvent ACTION_UP || ACTION_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-wide v4, 0x401921fb54442d18L

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->drawBg(Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    const-wide v2, 0x3fb47ae140000000L

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    iget-wide v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v7, v0, :cond_1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->barArray:[Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;

    aget-object v0, v0, v7

    iget-wide v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->radian:D

    const/high16 v3, 0x3f800000

    rsub-int/lit8 v4, v7, 0x7

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double v2, v1, v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentGradientColor:[I

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->easeXOffset:[F

    aget v5, v1, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->draw(Landroid/graphics/Canvas;D[IFZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->changeXOffset()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->changeColor()V

    return-void
.end method

.method public playTimeEffect()V
    .locals 0

    return-void
.end method

.method public setColor(Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;->NAVY:Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect$CoverColor;

    if-ne p1, v0, :cond_0

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentColorIndex:I

    const-string v0, "VisualEffectExpressMeGradientBar"

    const-string v1, "setColor : CoverColor.NAVY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isColorChanging:Z

    iput v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgAlphaCount:I

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentColorIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgNavyShader:Landroid/graphics/LinearGradient;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    iput v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->currentColorIndex:I

    const-string v0, "VisualEffectExpressMeGradientBar"

    const-string v1, "setColor : CoverColor.WHITE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->bgWhiteShader:Landroid/graphics/LinearGradient;

    goto :goto_1
.end method

.method public startEffect()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "VisualEffectExpressMeGradientBar"

    const-string v1, "startEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->setStartVariables()V

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isColorChanging:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopEffect()V
    .locals 2

    const-string v0, "VisualEffectExpressMeGradientBar"

    const-string v1, "stopEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/GradientBarEffect;->isDrawing:Z

    return-void
.end method
