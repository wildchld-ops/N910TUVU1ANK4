.class public Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteMsgAnimation"
.end annotation


# instance fields
.field protected mIsAlphaAnim:Z

.field protected mIsTransferAnim:Z

.field protected mOrginalDelItems:[I

.field protected mStepForDelAnim:I

.field protected mTimeIntervalForTransfer:I

.field protected mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

.field protected mVisibleDelItems:[I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    iput v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    new-instance v0, Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V

    return-void
.end method


# virtual methods
.method protected afterDelAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runDeleteMsgAnimation()V

    return-void
.end method

.method protected hideSelectedChildItems()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readyDeleteMsgAnimation([I)V
    .locals 4
    .param p1    # [I

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iput-boolean v3, v0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runDeleteMsgAnimation()V

    goto :goto_0
.end method

.method public runDeleteMsgAnimation()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startDeleteMsgAnimation()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onEndDeleteMsgAnimation()V

    :cond_3
    iput v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v3, :cond_5

    iput v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mStepForDelAnim:I

    goto :goto_0
.end method

.method protected sortVisibleDelItemsInAscending([I)[I
    .locals 13
    .param p1    # [I

    array-length v11, p1

    new-array v6, v11, [I

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v0, 0x0

    :goto_0
    array-length v11, p1

    if-ge v0, v11, :cond_1

    aget v11, p1, v0

    if-ltz v11, :cond_0

    aget v11, p1, v0

    if-ge v11, v8, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p1, v0

    if-gt v11, v12, :cond_0

    aget v11, p1, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    add-int/lit8 v10, v9, 0x1

    aget v11, p1, v0

    aput v11, v6, v9

    move v9, v10

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    add-int/lit8 v2, v0, 0x1

    :goto_2
    if-ge v2, v9, :cond_3

    aget v11, v6, v0

    aget v12, v6, v2

    if-le v11, v12, :cond_2

    aget v5, v6, v0

    aget v11, v6, v2

    aput v11, v6, v0

    aput v5, v6, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    array-length v11, p1

    new-array v7, v11, [I

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v4, v3

    :goto_3
    if-ge v0, v9, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget v11, v6, v0

    aput v11, v7, v4

    add-int/lit8 v2, v0, 0x1

    :goto_4
    if-ge v2, v9, :cond_5

    aget v11, v6, v0

    aget v12, v6, v2

    if-eq v11, v12, :cond_6

    add-int/lit8 v0, v2, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    if-nez v4, :cond_9

    const/4 v1, 0x0

    :cond_8
    return-object v1

    :cond_9
    new-array v1, v4, [I

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_8

    aget v11, v7, v0

    iget-object v12, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v12}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected startAlphaDelAnim([I)V
    .locals 12
    .param p1    # [I

    const v2, 0x3e4ccccd

    const/high16 v1, 0x3f800000

    const/4 v5, 0x1

    const/4 v10, 0x0

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/animation/AnimationSet;->reset()V

    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f000000

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v9, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-eqz v10, :cond_1

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v10, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    const/4 v11, 0x0

    :goto_0
    array-length v1, p1

    if-ge v11, v1, :cond_4

    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    aget v2, p1, v11

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected startDeleteMsgAnimation()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->sortVisibleDelItemsInAscending([I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mOrginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v3, v3

    if-gez v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$2;-><init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v3, v3, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->cancelTransAnimation()V

    goto :goto_1
.end method
