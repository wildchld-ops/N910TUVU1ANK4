.class Landroid/widget/AbsHorizontalListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable$1;-><init>(Landroid/widget/AbsHorizontalListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    # getter for: Landroid/widget/AbsHorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z
    invoke-static {p1}, Landroid/widget/AbsHorizontalListView;->access$2100(Landroid/widget/AbsHorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    # getter for: Landroid/widget/AbsHorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;
    invoke-static {p1}, Landroid/widget/AbsHorizontalListView;->access$2200(Landroid/widget/AbsHorizontalListView;)Landroid/view/HapticPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/OverScroller;->setHapticView(Landroid/view/View;Landroid/view/HapticPreDrawListener;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setIsListViewClient(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$1800(Landroid/widget/AbsHorizontalListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v3}, Landroid/widget/AbsHorizontalListView;->access$2600(Landroid/widget/AbsHorizontalListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v5, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2700(Landroid/widget/AbsHorizontalListView;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2800(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$2900(Landroid/widget/AbsHorizontalListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, v2, Landroid/widget/AbsHorizontalListView;->mPositionScroller:Landroid/widget/AbsHorizontalListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # invokes: Landroid/widget/AbsHorizontalListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$3000(Landroid/widget/AbsHorizontalListView;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2300(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2300(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsHorizontalListView;->access$2302(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v2, v2, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AbsHorizontalListView;->layoutChildren()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v2, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v28

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3100(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3200(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v25, 0x0

    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_8

    if-eqz v23, :cond_5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/widget/AbsHorizontalListView;->access$3500(Landroid/widget/AbsHorizontalListView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v9, v9, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsHorizontalListView;->access$3600(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    :cond_5
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v4, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/AbsHorizontalListView;->mMotionViewOriginalLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mPaddingRight:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3300(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mPaddingLeft:I
    invoke-static {v4}, Landroid/widget/AbsHorizontalListView;->access$3400(Landroid/widget/AbsHorizontalListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_8
    if-eqz v22, :cond_a

    if-nez v15, :cond_a

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v2}, Landroid/widget/AbsHorizontalListView;->access$3700(Landroid/widget/AbsHorizontalListView;)I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    sub-int v5, v18, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v11, v2, Landroid/widget/AbsHorizontalListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v4 .. v13}, Landroid/widget/AbsHorizontalListView;->access$3800(Landroid/widget/AbsHorizontalListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_10

    if-gtz v7, :cond_d

    if-lez v18, :cond_d

    const/16 v17, 0x1

    :goto_3
    if-ltz v7, :cond_e

    if-gez v18, :cond_e

    const/16 v16, 0x1

    :goto_4
    if-nez v17, :cond_b

    if-eqz v16, :cond_f

    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    if-eqz v16, :cond_c

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    :cond_c
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    :cond_d
    const/16 v17, 0x0

    goto :goto_3

    :cond_e
    const/16 v16, 0x0

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsHorizontalListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    const v6, 0x7fffffff

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move v1, v6

    :goto_0
    iput v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsHorizontalListView;->access$2300(Landroid/widget/AbsHorizontalListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const-string v2, "AbsHorizontalListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    # setter for: Landroid/widget/AbsHorizontalListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v2}, Landroid/widget/AbsHorizontalListView;->access$2302(Landroid/widget/AbsHorizontalListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2500(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method startScroll(IIZ)V
    .locals 6

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mLastFlingX:I

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/AbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    # getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v1}, Landroid/widget/AbsHorizontalListView;->access$2400(Landroid/widget/AbsHorizontalListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsHorizontalListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$FlingRunnable;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
