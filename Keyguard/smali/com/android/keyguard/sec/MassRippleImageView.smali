.class public Lcom/android/keyguard/sec/MassRippleImageView;
.super Landroid/widget/ImageView;
.source "MassRippleImageView.java"


# instance fields
.field INTERVAL_STROKE:F

.field IntrinsicHeight:I

.field IntrinsicWidth:I

.field WORKING_GAP:F

.field mPath:Landroid/graphics/Path;

.field originalStroke:F

.field oval:Landroid/graphics/RectF;

.field prevTime:J

.field rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

.field stroke:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/16 v1, 0xc8

    const v0, 0x41d4cccd

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    iput v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FIIF)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # F
    .param p3    # I
    .param p4    # I
    .param p5    # F

    const/high16 v2, 0x41a00000

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/MassRippleImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "MassRippleImageView"

    const-string v1, "MassRippleImageView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    invoke-virtual {p0, p2}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    int-to-float v0, p4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v0, p3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/MassRippleImageView;->translatedFromDPToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    div-float/2addr v0, p5

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    div-float v0, p5, v2

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->WORKING_GAP:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->getAnimation()Landroid/view/animation/Animation;

    return-void
.end method

.method private isTooEarly()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->prevTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->WORKING_GAP:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->prevTime:J

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getAnimation()Landroid/view/animation/Animation;
    .locals 6

    const/high16 v2, 0x3f800000

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->INTERVAL_STROKE:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/MassRippleImageView;->isTooEarly()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->oval:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/PathShape;

    iget-object v2, p0, Lcom/android/keyguard/sec/MassRippleImageView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicHeight:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/keyguard/sec/MassRippleImageView;->IntrinsicWidth:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->rippleCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    iget v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->originalStroke:F

    iput v0, p0, Lcom/android/keyguard/sec/MassRippleImageView;->stroke:F

    return-void
.end method

.method public setPivotX(F)V
    .locals 0
    .param p1    # F

    invoke-super {p0, p1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0
    .param p1    # F

    invoke-super {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public translatedFromDPToPixel(F)F
    .locals 6
    .param p1    # F

    const/4 v2, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v3

    const/high16 v3, 0x43200000

    div-float v3, v0, v3

    mul-float v2, p1, v3

    const-string v3, "MassRippleImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to Pixel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
