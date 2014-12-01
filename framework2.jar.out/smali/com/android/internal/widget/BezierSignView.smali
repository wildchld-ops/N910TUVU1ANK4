.class public Lcom/android/internal/widget/BezierSignView;
.super Lcom/android/internal/widget/SignView;
.source "BezierSignView.java"


# static fields
.field private static final MID:F = 0.5f

.field protected static final TAG:Ljava/lang/String; = "BezierSignView"

.field protected static final TOUCH_TOLERANCE_AGAIN:F = 10.0f


# instance fields
.field private mBezierEnabled:Z

.field protected mBezierX:F

.field protected mBezierY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/SignView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private addToPathForDrawing(I)V
    .locals 14

    const/high16 v13, 0x41200000

    const/high16 v12, 0x40000000

    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v3, p0, Lcom/android/internal/widget/SignView;->mY:F

    sget-boolean v9, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v9, :cond_0

    const-string v9, "BezierSignView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addToPathForDrawing from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v6, p1

    :goto_0
    if-ge v6, v1, :cond_3

    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v7, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    iget v8, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    sub-float v9, v7, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v9, v8, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v9, v4, v13

    if-gez v9, :cond_1

    cmpl-float v9, v5, v13

    if-ltz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    add-float v10, v7, v2

    div-float/2addr v10, v12

    add-float v11, v8, v3

    div-float/2addr v11, v12

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_1
    move v2, v7

    move v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    iput v9, p0, Lcom/android/internal/widget/SignView;->mX:F

    iget v9, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    iput v9, p0, Lcom/android/internal/widget/SignView;->mY:F

    return-void
.end method


# virtual methods
.method doBezier(IFFFFJF)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/widget/SignView$SignatureInput;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mX:F

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mY:F

    move/from16 v20, v0

    add-float v1, p4, p2

    const/high16 v2, 0x40000000

    div-float v21, v1, v2

    add-float v1, p5, p3

    const/high16 v2, 0x40000000

    div-float v22, v1, v2

    const/high16 v1, 0x3f000000

    mul-float v1, v1, v17

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float v2, v2, v19

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float v2, v2, v21

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float v3, v1, v2

    const/high16 v1, 0x3f000000

    mul-float v1, v1, v18

    const/high16 v2, 0x3f000000

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000

    mul-float v2, v2, v20

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    mul-float v2, v2, v22

    const/high16 v7, 0x3f000000

    mul-float/2addr v2, v7

    add-float v4, v1, v2

    move-object/from16 v0, v23

    iget-wide v5, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mTime:J

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/internal/widget/SignView$SignatureInput;->mPressure:F

    move/from16 v11, v21

    move/from16 v12, v22

    move-wide/from16 v13, p6

    move/from16 v16, p8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v9, v1, v2

    new-instance v1, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_0

    const-string v1, "BezierSignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2nd point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    new-instance v9, Lcom/android/internal/widget/SignView$SignatureInput;

    const/4 v15, 0x2

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_1

    const-string v1, "BezierSignView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End point inserted, ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected handleActionDown(Landroid/view/MotionEvent;FF)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    iput p2, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    iput p3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;FF)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-boolean v0, p0, Lcom/android/internal/widget/SignView;->mUseHistoricalEvent:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    iget-wide v8, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v3, v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/BezierSignView;->handleMoveEventWithBezier(IIJF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v8, p0, Lcom/android/internal/widget/SignView;->mStartTime:J

    sub-long/2addr v3, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/BezierSignView;->handleMoveEventWithBezier(IIJF)V

    invoke-direct {p0, v6}, Lcom/android/internal/widget/BezierSignView;->addToPathForDrawing(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected handleMoveEventWithBezier(IIJF)V
    .locals 15

    sget-boolean v1, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_0

    const-string v1, "BezierSignView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMoveEventAndInvalidateWithBezier ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x2

    if-lt v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/SignView$SignatureInput;

    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/SignView$SignatureInput;

    iget v1, v14, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget v1, v11, Lcom/android/internal/widget/SignView$SignatureInput;->mTag:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    :cond_1
    move/from16 v0, p1

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move/from16 v0, p2

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget-boolean v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/widget/SignView;->mInputType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/high16 v1, 0x41a00000

    cmpl-float v1, v12, v1

    if-gez v1, :cond_2

    const/high16 v1, 0x41a00000

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_4

    :cond_2
    sget-boolean v1, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_3

    const-string v1, "BezierSignView"

    const-string v3, "Apply Bezier"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    iget v4, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    move-object v1, p0

    move-wide/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/BezierSignView;->doBezier(IFFFFJF)V

    move/from16 v0, p1

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    move/from16 v0, p2

    int-to-float v1, v0

    iget v3, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    :goto_0
    return-void

    :cond_4
    sget-boolean v1, Lcom/android/internal/widget/BezierSignView;->DBG_TOUCH:Z

    if-eqz v1, :cond_5

    const-string v1, "BezierSignView"

    const-string v3, "Just save this point"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/SignView;->mSignatureInputData:[Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/widget/SignView;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    new-instance v3, Lcom/android/internal/widget/SignView$SignatureInput;

    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v6, v0

    const/4 v9, 0x2

    move-object v4, p0

    move-wide/from16 v7, p3

    move/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/widget/SignView$SignatureInput;-><init>(Lcom/android/internal/widget/SignView;FFJIF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p1

    int-to-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierX:F

    move/from16 v0, p2

    int-to-float v1, v0

    iput v1, p0, Lcom/android/internal/widget/BezierSignView;->mBezierY:F

    goto :goto_0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/widget/SignView;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/BezierSignView;->mBezierEnabled:Z

    return-void
.end method
