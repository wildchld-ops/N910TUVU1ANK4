.class public Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;
.super Ljava/lang/Object;
.source "GradientBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$1;,
        Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;
    }
.end annotation


# instance fields
.field private final MAX_WIDTH_RATIO:F

.field private final MIN_WIDTH_RATIO:F

.field private final TAG:Ljava/lang/String;

.field private animationGapWidth:F

.field private animationMaxWidth:F

.field private animationMinWidth:F

.field private barHeight:I

.field private barType:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

.field private barWidth:I

.field private barX:I

.field private division1Y:F

.field private division2Y:F

.field private paint1:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IIIILcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    const v4, 0x3f4ccccd

    const v3, 0x3dcccccd

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VisualEffectExpressMeGradientBar"

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->TAG:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->MAX_WIDTH_RATIO:F

    iput v3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->MIN_WIDTH_RATIO:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iput v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    iput p2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barWidth:I

    iput p3, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    iput p4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barX:I

    iput-object p5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barType:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMinWidth:F

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMaxWidth:F

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMaxWidth:F

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMinWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationGapWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint3:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;D[IFZ)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # D
    .param p4    # [I
    .param p5    # F
    .param p6    # Z

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float v12, v0, v1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMinWidth:F

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationGapWidth:F

    mul-float/2addr v1, v12

    add-float v8, v0, v1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v8

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float v10, v0, p5

    const/4 v9, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barType:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    sget-object v1, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;->ONE:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationMinWidth:F

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->animationGapWidth:F

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v12

    mul-float/2addr v1, v2

    add-float v9, v0, v1

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    add-float v11, v0, v1

    :cond_0
    sget-object v0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$1;->$SwitchMap$com$sec$android$visualeffect$expressme$gradientbar$object$GradientBar$BarType:[I

    iget-object v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barType:Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar$BarType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v6, 0x1

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v2, 0x0

    add-float v3, v10, v8

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v6, 0x1

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v4

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v6, 0x3

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    add-float v3, v11, v9

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    add-float v3, v10, v8

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v6, 0x1

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v6, 0x3

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v13, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint3:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v4

    const/4 v5, 0x4

    aget v5, p4, v5

    const/4 v6, 0x5

    aget v6, p4, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz p6, :cond_2

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    add-float v3, v10, v8

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint3:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    add-float v3, v10, v8

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iget v1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    add-float v3, v11, v9

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint2:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    add-float v3, v10, v8

    iget v4, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint1:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    add-float v3, v10, v8

    iget v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->barHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->paint3:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDivY(F)V
    .locals 1
    .param p1    # F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    return-void
.end method

.method public setDivY(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division1Y:F

    iput p2, p0, Lcom/sec/android/visualeffect/expressme/gradientbar/object/GradientBar;->division2Y:F

    return-void
.end method
