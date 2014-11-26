.class public Lcom/samsung/android/toolbox/TwToolBoxChildLayout;
.super Landroid/widget/LinearLayout;
.source "TwToolBoxChildLayout.java"


# instance fields
.field private final mDensity:F

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-ge v15, v11, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->setRight(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v2, v15

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/high16 v15, 0x41880000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    :goto_1
    float-to-int v9, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/high16 v15, 0x41400000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    :goto_2
    float-to-int v12, v15

    div-int/lit8 v6, v1, 0x2

    move v3, v9

    if-lez v1, :cond_5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v5

    :goto_3
    if-nez v6, :cond_6

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/high16 v15, 0x41b80000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    :cond_2
    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_a

    rem-int/lit8 v15, v7, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const/4 v8, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/View;->setLeft(I)V

    if-eqz v8, :cond_9

    move v15, v4

    :goto_8
    add-int/2addr v3, v15

    invoke-virtual {v14, v3}, Landroid/view/View;->setRight(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_3
    const/high16 v15, 0x41e00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    goto :goto_1

    :cond_4
    const/high16 v15, 0x41d80000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v15, v2

    sub-int/2addr v15, v9

    sub-int/2addr v15, v12

    div-int v4, v15, v6

    goto :goto_4

    :cond_7
    sub-int v13, v1, v6

    const/4 v15, 0x3

    if-gt v13, v15, :cond_2

    const/high16 v15, 0x429c0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    move v15, v5

    goto :goto_8

    :cond_a
    return-void
.end method
