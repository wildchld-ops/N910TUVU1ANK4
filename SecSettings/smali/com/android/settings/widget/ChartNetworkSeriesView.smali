.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v7, -0x10000

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    iput-boolean v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    iput-boolean v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    sget-object v4, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    return-void
.end method

.method private generatePath()V
    .locals 28

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    const/16 v20, 0x0

    const/4 v13, 0x0

    int-to-float v14, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v13}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide/16 v21, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v3

    move v10, v15

    :goto_1
    if-gt v10, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v8}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v16, v0

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v24, v0

    add-long v4, v16, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v6

    const/16 v24, 0x0

    cmpg-float v24, v6, v24

    if-gez v24, :cond_2

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    add-long v21, v21, v24

    move/from16 v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    cmp-long v24, v11, v16

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move v13, v6

    move v14, v7

    move-wide v11, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v24, v0

    cmp-long v24, v11, v24

    if-gez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v25, v0

    invoke-interface/range {v24 .. v26}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    int-to-float v0, v9

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    int-to-float v0, v9

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    iget-wide v0, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v7, v0, v2

    :cond_0
    return-wide v7

    :cond_1
    iget-wide v7, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidatePath()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    iget-boolean v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v6, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    return-void
.end method

.method public setChartColor(III)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000
        0x41200000
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
