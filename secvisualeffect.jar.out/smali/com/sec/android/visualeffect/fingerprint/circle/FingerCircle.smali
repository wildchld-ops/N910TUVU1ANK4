.class public Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;
.super Ljava/lang/Object;
.source "FingerCircle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$1;,
        Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;,
        Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;
    }
.end annotation


# instance fields
.field private final ANI_SPEED:F

.field private final BLUE_LINE_COLOR:I

.field private final COLOR_SPEED:F

.field private final START_ANGLE:F

.field private final TAG:Ljava/lang/String;

.field private bluePaint:Landroid/graphics/Paint;

.field private blueRatio:F

.field private blueRatioPrev:F

.field private circleCenterX:I

.field private circleCenterY:I

.field private currentLineStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

.field private currentStepStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

.field private defaultPaint:Landroid/graphics/Paint;

.field private firstRectf:Landroid/graphics/RectF;

.field private index:I

.field private isAnimating:Z

.field private offsetX:I

.field private offsetY:I

.field private radius:F

.field private rectf:Landroid/graphics/RectF;

.field private stroke:F

.field private whitePaint:Landroid/graphics/Paint;

.field private whiteRatio:F

.field private whiteRatioPrev:F


# direct methods
.method public constructor <init>(IIIFFII)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VisualeffectFingerprint"

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->TAG:Ljava/lang/String;

    const v0, 0x3c75c28f

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->ANI_SPEED:F

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->COLOR_SPEED:F

    const/high16 v0, -0x3d4c0000

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->START_ANGLE:F

    const v0, -0xfa310a

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->BLUE_LINE_COLOR:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->isAnimating:Z

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentLineStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;->ONE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentStepStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    iput p1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->index:I

    iput p2, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterX:I

    iput p3, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterY:I

    iput p5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->stroke:F

    iput p4, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->radius:F

    neg-int v0, p2

    add-int/2addr v0, p6

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->offsetX:I

    neg-int v0, p3

    add-int/2addr v0, p7

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->offsetY:I

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    sub-float/2addr v1, p4

    int-to-float v2, p3

    sub-float/2addr v2, p4

    int-to-float v3, p2

    add-float/2addr v3, p4

    int-to-float v4, p3

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->rectf:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    sub-float/2addr v1, p4

    int-to-float v2, p3

    sub-float/2addr v2, p4

    int-to-float v3, p2

    add-float/2addr v3, p4

    int-to-float v4, p3

    add-float/2addr v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->firstRectf:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setLayout()V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->clearVariables()V

    return-void
.end method

.method private cubicEaseOut(F)F
    .locals 2
    .param p1    # F

    const/high16 v1, 0x3f800000

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getColorFromBlueToWhite(F)I
    .locals 6
    .param p1    # F

    const v3, -0xfa310a

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/high16 v4, 0x3f800000

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v2, v4, v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v1, v4, v5

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    rsub-int v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int v0, v4, v5

    const/16 v4, 0xff

    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    goto :goto_0
.end method

.method private setLayout()V
    .locals 4

    const v3, -0xfa310a

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    const v1, 0x44ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public clearVariables()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    const v1, -0xfa310a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public directWhiteLine()V
    .locals 1

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->WHITELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;F)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # F

    const/high16 v9, -0x3c4c0000

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000

    const/high16 v2, -0x3d4c0000

    cmpl-float v0, p2, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->firstRectf:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->firstRectf:Landroid/graphics/RectF;

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->offsetX:I

    int-to-float v5, v5

    mul-float/2addr v5, p2

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->offsetY:I

    int-to-float v6, v6

    mul-float/2addr v6, p2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->firstRectf:Landroid/graphics/RectF;

    :goto_0
    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$1;->$SwitchMap$com$sec$android$visualeffect$fingerprint$circle$FingerCircle$LineStatus:[I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->getCurrentLineStatus()Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->rectf:Landroid/graphics/RectF;

    goto :goto_0

    :pswitch_0
    const/high16 v3, 0x43b40000

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_1
    const/high16 v3, 0x43b40000

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->cubicEaseOut(F)F

    move-result v0

    mul-float v3, v0, v9

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_1

    iput v7, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iput v7, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->WHITELINE:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    const v2, 0x3c75c28f

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_2

    iput v7, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iput v7, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    :goto_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->getColorFromBlueToWhite(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterY:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->radius:F

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    const v2, 0x3d4ccccd

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterX:I

    int-to-float v0, v0

    iget v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->circleCenterY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->radius:F

    iget-object v7, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->cubicEaseOut(F)F

    move-result v0

    mul-float v3, v0, v9

    iget-object v5, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->bluePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_3

    iput v8, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iput v8, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    const v2, 0x3c75c28f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public fail()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iput v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->FAILED:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    return-void
.end method

.method public getCurrentLineStatus()Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentLineStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->index:I

    return v0
.end method

.method public isAnimating()Z
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatioPrev:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    iget v2, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatioPrev:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->isAnimating:Z

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->blueRatio:F

    const/high16 v2, 0x3f800000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->whiteRatio:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->isAnimating:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->isAnimating:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V
    .locals 0
    .param p1    # Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    iput-object p1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentLineStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    return-void
.end method

.method public setCurrentStepStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;)V
    .locals 1
    .param p1    # Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    iget-object v0, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentStepStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->currentStepStatus:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$StepStatus;

    sget-object v0, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;->DEFAULT:Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->setCurrentLineStatus(Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle$LineStatus;)V

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/fingerprint/circle/FingerCircle;->clearVariables()V

    :cond_0
    return-void
.end method
