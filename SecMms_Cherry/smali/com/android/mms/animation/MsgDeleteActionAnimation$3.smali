.class Lcom/android/mms/animation/MsgDeleteActionAnimation$3;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgDeleteActionAnimation;->deleteActionAnimMultiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isDeletedItem(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v2, v2, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

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
    .locals 17
    .param p1    # Landroid/view/animation/Animation;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-boolean v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->hideSelectedChildItems()V

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MsgSweepActionListView;->getBottom()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v7, v1, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v1

    if-gt v2, v1, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->isDeletedItem(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    if-lt v14, v2, :cond_4

    if-ge v2, v7, :cond_6

    :cond_4
    const/4 v12, 0x0

    const/4 v11, 0x0

    if-lt v2, v7, :cond_5

    if-eqz v13, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v10, v1

    move v15, v11

    :cond_5
    :goto_3
    move/from16 v0, v16

    if-gt v10, v0, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    add-int/lit8 v14, v14, 0x1

    :cond_6
    :goto_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_7
    move v11, v15

    goto :goto_3

    :cond_8
    move/from16 v10, v16

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v10, v1

    move/from16 v0, v16

    if-gt v10, v0, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_a
    move/from16 v10, v16

    goto :goto_6

    :cond_b
    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd isEnd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mIsScaleFadeOutSet END, startTransAnimation"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v1, v1, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->startTransAnimation(I)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;->this$0:Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;->onBeginDeleteConversationListAnimationEnd()V

    :cond_0
    return-void
.end method
