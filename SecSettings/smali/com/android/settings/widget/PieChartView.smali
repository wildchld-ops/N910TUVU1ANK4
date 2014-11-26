.class public Lcom/android/settings/widget/PieChartView;
.super Landroid/view/View;
.source "PieChartView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/PieChartView$Slice;
    }
.end annotation


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private mOriginAngle:I

.field private mPaintOutline:Landroid/graphics/Paint;

.field private mPathOutline:Landroid/graphics/Path;

.field private mPathSide:Landroid/graphics/Path;

.field private mPathSideOutline:Landroid/graphics/Path;

.field private mSideWidth:I

.field private mSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/widget/PieChartView$Slice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x41a00000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 1
    .param p0    # I
    .param p1    # Landroid/content/res/Resources;

    invoke-static {p0, p1}, Lcom/android/settings/widget/PieChartView;->buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private static buildFillPaint(ILandroid/content/res/Resources;)Landroid/graphics/Paint;
    .locals 2
    .param p0    # I
    .param p1    # Landroid/content/res/Resources;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public addSlice(JI)V
    .locals 2
    .param p1    # J
    .param p3    # I

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/widget/PieChartView$Slice;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/widget/PieChartView$Slice;-><init>(Lcom/android/settings/widget/PieChartView;JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public generatePath()V
    .locals 26

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    add-long v19, v19, v22

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->reset()V

    const-wide/16 v22, 0x0

    cmp-long v22, v19, v22

    if-nez v22, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v8

    new-instance v10, Landroid/graphics/RectF;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v8

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v11, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/widget/PieChartView$Slice;

    iget-wide v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->value:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x168

    mul-long v22, v22, v24

    div-long v22, v22, v19

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v4, v13, v17

    rem-int/lit16 v0, v13, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v14, v0

    rem-int/lit16 v0, v4, 0x168

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v5, v0

    const/high16 v22, 0x42b40000

    cmpl-float v22, v14, v22

    if-lez v22, :cond_6

    const/high16 v22, 0x43870000

    cmpg-float v22, v14, v22

    if-gez v22, :cond_6

    const/16 v16, 0x1

    :goto_3
    const/high16 v22, 0x42b40000

    cmpl-float v22, v5, v22

    if-lez v22, :cond_7

    const/high16 v22, 0x43870000

    cmpg-float v22, v5, v22

    if-gez v22, :cond_7

    const/4 v7, 0x1

    :goto_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->lineTo(FF)V

    if-nez v16, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    if-eqz v16, :cond_8

    int-to-float v15, v13

    :goto_5
    if-eqz v7, :cond_9

    int-to-float v6, v4

    :goto_6
    sub-float v18, v6, v15

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v11, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v10, v6, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_3
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    int-to-float v0, v13

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v16, :cond_4

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_4
    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v23

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    add-int v23, v13, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v7, :cond_5

    iget-object v0, v12, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/PieChartView;->mSideWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_5
    add-int v13, v13, v17

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_8
    const/high16 v15, 0x43e10000

    goto/16 :goto_5

    :cond_9
    const/high16 v6, 0x43870000

    goto/16 :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathSide:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathSideOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PieChartView$Slice;

    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->path:Landroid/graphics/Path;

    iget-object v3, v1, Lcom/android/settings/widget/PieChartView$Slice;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/android/settings/widget/PieChartView$Slice;->pathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mPathOutline:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/PieChartView;->mPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const v3, 0x3f2a3d71

    const v4, 0x3f733333

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v2, p0, Lcom/android/settings/widget/PieChartView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x3de00000

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    return-void
.end method

.method public removeAllSlices()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/PieChartView;->mSlices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setOriginAngle(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/settings/widget/PieChartView;->mOriginAngle:I

    return-void
.end method
