.class public Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;
.super Ljava/lang/Object;
.source "RecentsScrollViewPerformanceHelper.java"


# static fields
.field public static final OPTIMIZE_SW_RENDERED_RECENTS:Z = true

.field public static final USE_DARK_FADE_IN_HW_ACCELERATED_MODE:Z = true


# instance fields
.field private mFadingEdgeLength:I

.field private mIsVertical:Z

.field private mScrollView:Landroid/view/View;

.field private mSoftwareRendered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    iput-object p3, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean p4, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addViewCallback(Landroid/view/View;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    :cond_0
    return-void
.end method

.method public drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v2, :cond_0

    :cond_0
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/high16 v6, -0x34000000

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    int-to-float v14, v2

    float-to-int v0, v14

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_1

    add-int v2, p4, v16

    sub-int v3, p5, v16

    if-le v2, v3, :cond_1

    sub-int v2, p5, p4

    div-int/lit8 v16, v2, 0x2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_2

    add-int v2, p2, v16

    sub-int v3, p3, v16

    if-le v2, v3, :cond_2

    sub-int v2, p3, p2

    div-int/lit8 v16, v2, 0x2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    move/from16 v0, p8

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v20

    mul-float v2, v20, v14

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    const/4 v13, 0x1

    :goto_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    move/from16 v0, p9

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v2, v9, v14

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    const/4 v10, 0x1

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mIsVertical:Z

    if-nez v2, :cond_4

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    move/from16 v0, p10

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v15

    mul-float v2, v15, v14

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    const/4 v11, 0x1

    :goto_2
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    move/from16 v0, p11

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v19

    mul-float v2, v19, v14

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    const/4 v12, 0x1

    :cond_4
    :goto_3
    if-eqz v13, :cond_5

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v20

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    add-int v2, p4, v16

    int-to-float v6, v2

    move-object/from16 v2, p1

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    if-eqz v10, :cond_6

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x43340000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    sub-int v2, p5, v16

    int-to-float v4, v2

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    if-eqz v11, :cond_7

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, -0x3d4c0000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    add-int v2, p2, v16

    int-to-float v5, v2

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v12, :cond_8

    const/high16 v2, 0x3f800000

    mul-float v3, v14, v19

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x42b40000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move/from16 v0, p3

    int-to-float v2, v0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    sub-int v2, p3, v16

    int-to-float v3, v2

    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    move-object/from16 v2, p1

    move-object/from16 v7, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    return-void

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3
.end method

.method public getHorizontalFadingEdgeLengthCallback()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public getVerticalFadingEdgeLengthCallback()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mFadingEdgeLength:I

    return v0
.end method

.method public onAttachedToWindowCallback(Lcom/android/systemui/recent/cardholder/RecentsCallback;Landroid/widget/LinearLayout;Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mSoftwareRendered:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsScrollViewPerformanceHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
