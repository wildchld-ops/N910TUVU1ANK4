.class public Landroid/view/animation/TranslateAnimation3D;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation3D.java"


# instance fields
.field private final LOG_ANIMATION:Z

.field private currXRatio:F

.field private currYRatio:F

.field private currZRatio:F

.field private defaultConstInit:Z

.field private fromMoveVector_xType:I

.field private fromMoveVector_xValue:F

.field private fromMoveVector_yType:I

.field private fromMoveVector_yValue:F

.field private fromMoveVector_zType:I

.field private fromMoveVector_zValue:F

.field private fromXDelta_Multiplier:I

.field private fromXRatio:F

.field private fromYDelta_Multiplier:I

.field private fromYRatio:F

.field private fromZDelta_Multiplier:I

.field private fromZRatio:F

.field private isAbsolute:Z

.field private mFromAlpha:F

.field private mToAlpha:F

.field private sXDelta_Multiplier:I

.field private sYDelta_Multiplier:I

.field private sZDelta_Multiplier:I

.field private toMoveVector_xType:I

.field private toMoveVector_xValue:F

.field private toMoveVector_yType:I

.field private toMoveVector_yValue:F

.field private toMoveVector_zType:I

.field private toMoveVector_zValue:F

.field private toXDelta_Multiplier:I

.field private toXRatio:F

.field private toYDelta_Multiplier:I

.field private toYRatio:F

.field private toZDelta_Multiplier:I

.field private toZRatio:F

.field private translateString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->LOG_ANIMATION:Z

    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    const-string v0, "TRANSLATION_"

    iput-object v0, p0, Landroid/view/animation/TranslateAnimation3D;->translateString:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/high16 v5, 0x3f800000

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->LOG_ANIMATION:Z

    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    const-string v2, "TRANSLATION_"

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation3D;->translateString:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation3D:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xValue:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xValue:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yValue:F

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zValue:F

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v1

    sget v2, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    iget-object v0, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toXRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currXRatio:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toYRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currYRatio:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toZRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currZRatio:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->currXRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->currYRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->currZRatio:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    iget v5, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    iget v6, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    invoke-virtual/range {v0 .. v6}, Landroid/view/animation/ModelViewState;->setTranslationAnim(FFFIII)V

    iget v7, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    const/4 v8, 0x0

    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    sub-float/2addr v1, v7

    mul-float/2addr v1, p1

    add-float v8, v7, v1

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZRatio:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    if-nez v0, :cond_7

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    if-nez v0, :cond_8

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    if-nez v0, :cond_9

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    :cond_2
    :goto_2
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    if-nez v0, :cond_a

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    :cond_3
    :goto_3
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    if-nez v0, :cond_4

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    :cond_4
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    if-ne v0, v1, :cond_5

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    :cond_5
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    if-nez v0, :cond_b

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    :cond_6
    :goto_4
    return-void

    :cond_7
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    goto :goto_0

    :cond_8
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    goto :goto_1

    :cond_9
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    goto :goto_2

    :cond_a
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    goto :goto_3

    :cond_b
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    if-ne v0, v1, :cond_6

    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    goto :goto_4
.end method

.method public final isAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    return v0
.end method

.method public setAbsolute(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    return-void
.end method

.method public setAlphaAnimation(FF)V
    .locals 0

    iput p1, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    return-void
.end method
