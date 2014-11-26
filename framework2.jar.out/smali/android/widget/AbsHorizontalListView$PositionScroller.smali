.class Landroid/widget/AbsHorizontalListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromLeft:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsHorizontalListView;->access$3900(Landroid/widget/AbsHorizontalListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x1

    add-int v11, v8, v13

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v15, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_1
    sub-int v31, v17, v15

    add-int v28, v31, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_1
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_0

    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v4, v0, :cond_0

    add-int v31, v8, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v20

    move/from16 v1, v31

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    add-int v33, v24, v23

    sub-int v33, v33, v7

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    move/from16 v0, v23

    if-le v0, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v23, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lez v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v10, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v31

    add-int/lit8 v13, v31, -0x2

    if-ltz v13, :cond_0

    add-int v11, v8, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v11, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int v15, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mExtraScroll:I

    move/from16 v32, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-le v11, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v15, v7

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    sub-int v26, v18, v7

    add-int v16, v14, v17

    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v26, v16

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v33, v0

    const/16 v34, 0x1

    invoke-virtual/range {v31 .. v34}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ne v0, v8, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    move/from16 v25, v0

    add-int v31, v8, v4

    add-int/lit8 v11, v31, -0x1

    const/16 v30, 0x0

    move/from16 v0, v25

    if-ge v0, v8, :cond_b

    sub-int v31, v8, v25

    add-int/lit8 v30, v31, 0x1

    :cond_a
    :goto_3
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v4

    move/from16 v32, v0

    div-float v27, v31, v32

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v25

    if-ge v0, v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    move/from16 v0, v25

    if-le v0, v11, :cond_a

    sub-int v30, v25, v11

    goto :goto_3

    :cond_c
    move/from16 v0, v25

    if-le v0, v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    sub-int v32, v25, v8

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getLeft()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mOffsetFromLeft:I

    move/from16 v31, v0

    sub-int v5, v29, v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v5, v6, v1}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method scrollToVisible(III)V
    .locals 17
    .param p1    # I
    .param p2    # I
    .param p3    # I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v6, v14, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v14, v14, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v15, v15, Landroid/widget/AbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v9, v14, v15

    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    :cond_0
    const-string v14, "AbsHorizontalListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not visible ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    :cond_2
    const/16 p2, -0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    const/4 v10, 0x0

    if-le v13, v9, :cond_4

    sub-int v10, v13, v9

    :cond_4
    if-ge v12, v8, :cond_5

    sub-int v10, v12, v8

    :cond_5
    if-nez v10, :cond_6

    :goto_0
    return-void

    :cond_6
    if-ltz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez v10, :cond_8

    add-int v14, v4, v1

    if-le v14, v9, :cond_8

    const/4 v14, 0x0

    sub-int v15, v4, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v3, v1

    if-ge v14, v8, :cond_7

    const/4 v14, 0x0

    sub-int v15, v3, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1
.end method

.method start(I)V
    .locals 9
    .param p1    # I

    const/16 v8, 0xc8

    const/4 v7, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v5, v5, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v6, Landroid/widget/AbsHorizontalListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller$1;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v2, v5, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v1, v2, :cond_2

    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    :goto_1
    if-lez v4, :cond_4

    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    :goto_2
    iput v1, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    iput v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    iput v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v5, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v7, v8}, Landroid/widget/AbsHorizontalListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    :cond_4
    iput v8, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method start(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsHorizontalListView$PositionScroller;->start(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v9, v9, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v10, Landroid/widget/AbsHorizontalListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsHorizontalListView$PositionScroller$2;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v5, v9, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    const/4 v9, 0x0

    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v4, v5, :cond_4

    sub-int v1, v6, p2

    const/4 v9, 0x1

    if-lt v1, v9, :cond_0

    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v2, v1, -0x1

    if-ge v2, v7, :cond_3

    move v8, v2

    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    :goto_1
    if-lez v8, :cond_7

    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    :goto_2
    iput v4, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v9, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v8, v7

    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_4
    if-le v4, v6, :cond_6

    sub-int v0, p2, v5

    const/4 v9, 0x1

    if-lt v0, v9, :cond_0

    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v2, v0, -0x1

    if-ge v2, v7, :cond_5

    move v8, v2

    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_5
    move v8, v7

    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_6
    const/16 v9, 0xc8

    invoke-virtual {p0, v4, p2, v9}, Landroid/widget/AbsHorizontalListView$PositionScroller;->scrollToVisible(III)V

    goto :goto_0

    :cond_7
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    goto :goto_2
.end method

.method startWithOffset(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method startWithOffset(III)V
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v9, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsHorizontalListView$PositionScroller;->stop()V

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v7, v7, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v7, :cond_1

    move v3, p2

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    new-instance v8, Landroid/widget/AbsHorizontalListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, v3, p3}, Landroid/widget/AbsHorizontalListView$PositionScroller$3;-><init>(Landroid/widget/AbsHorizontalListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr p2, v7

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    iput p2, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mOffsetFromLeft:I

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mBoundPos:I

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mMode:I

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v1, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    iget v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    iget v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    :goto_1
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    const/high16 v7, 0x3f800000

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    :goto_2
    iput p3, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mScrollDuration:I

    iput v9, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mLastSeenPos:I

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v7, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    iget v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    iget v8, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v7, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9}, Landroid/widget/AbsHorizontalListView;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_2
.end method

.method stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$PositionScroller;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
