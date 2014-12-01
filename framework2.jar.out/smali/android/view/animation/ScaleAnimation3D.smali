.class public Landroid/view/animation/ScaleAnimation3D;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation3D.java"


# static fields
.field static final LOG_ACTIVITY_ACTIVITY:Z


# instance fields
.field private defaultConstInit:Z

.field private fromScaleVector_xType:I

.field private fromScaleVector_xValue:F

.field private fromScaleVector_yType:I

.field private fromScaleVector_yValue:F

.field private fromScaleVector_zType:I

.field private fromScaleVector_zValue:F

.field private fromXDelta_Multiplier:I

.field private fromYDelta_Multiplier:I

.field private fromZDelta_Multiplier:I

.field private isAbsolute:Z

.field private mPivotXMultiplier:I

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotYMultiplier:I

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mPivotZMultiplier:I

.field private mPivotZType:I

.field private mPivotZValue:F

.field private orientationAdjustment:I

.field private toScaleVector_xType:I

.field private toScaleVector_xValue:F

.field private toScaleVector_yType:I

.field private toScaleVector_yValue:F

.field private toScaleVector_zType:I

.field private toScaleVector_zValue:F

.field private toXDelta_Multiplier:I

.field private toYDelta_Multiplier:I

.field private toZDelta_Multiplier:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    iput-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    iput v1, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    iput-boolean v1, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    iput v5, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation3D:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_xType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_xValue:F

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_yType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_yValue:F

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_zType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_zValue:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_xType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_xValue:F

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_yType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_yValue:F

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_zType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_zValue:F

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXValue:F

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYValue:F

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZValue:F

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v2

    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    iget-object v1, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    move v0, p1

    return-void
.end method

.method public final isAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    return v0
.end method

.method public setAbsolute(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    return-void
.end method
