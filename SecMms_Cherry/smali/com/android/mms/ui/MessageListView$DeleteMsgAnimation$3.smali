.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startAlphaDelAnim([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDeletedItem(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 18

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v7, v1, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v1

    if-gt v2, v1, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->isDeletedItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    if-lt v14, v2, :cond_4

    if-ge v2, v7, :cond_6

    :cond_4
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-lt v2, v7, :cond_5

    if-eqz v13, :cond_7

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v9, v1

    move/from16 v16, v11

    :cond_5
    :goto_4
    move/from16 v0, v17

    if-gt v9, v0, :cond_8

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v9, v1

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    add-int/lit8 v14, v14, 0x1

    :cond_6
    :goto_6
    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    move/from16 v11, v16

    goto :goto_4

    :cond_8
    move/from16 v9, v17

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v9, v1

    move/from16 v0, v17

    if-gt v9, v0, :cond_a

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v9, v1

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    move/from16 v9, v17

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget v3, v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onBeginDeleteMsgAnimation()V

    :cond_0
    return-void
.end method
