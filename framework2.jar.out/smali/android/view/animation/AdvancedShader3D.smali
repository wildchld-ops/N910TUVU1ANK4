.class public Landroid/view/animation/AdvancedShader3D;
.super Landroid/view/animation/Animation;
.source "AdvancedShader3D.java"


# instance fields
.field private defaultConstInit:Z

.field private mShaderEffect:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    iput-boolean v2, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    sget-object v1, Lcom/android/internal/R$styleable;->AdvancedShader3D:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AdvancedShader3D;->mShaderEffect:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

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
    iget v1, p0, Landroid/view/animation/AdvancedShader3D;->mShaderEffect:F

    invoke-virtual {v0, v1}, Landroid/view/animation/ModelViewState;->setShaderAnim(F)V

    goto :goto_0
.end method
