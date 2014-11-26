.class public Lcom/android/mms/animation/MsgDeleteActionAnimation;
.super Ljava/lang/Object;
.source "MsgDeleteActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;,
        Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;
    }
.end annotation


# instance fields
.field private final ANIMATION_DELETE_ACTION_FADEOUT_DURATION:J

.field private final ANIMATION_DELETE_ACTION_SCALE_DURATION:J

.field private TAG:Ljava/lang/String;

.field private final TIME_INTERVAL_FOR_TRANSFER:I

.field private mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

.field protected mIsDeleteMsgAnimating:Z

.field protected mIsScaleFadeOutSet:Z

.field protected mIsTransferDelItemAnim:Z

.field mListView:Lcom/android/mms/ui/MsgSweepActionListView;

.field protected mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

.field protected mOriginalDelItems:[I

.field mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

.field public mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

.field protected mVisibleDelItems:[I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V
    .locals 4
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;
    .param p2    # Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->ANIMATION_DELETE_ACTION_FADEOUT_DURATION:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->ANIMATION_DELETE_ACTION_SCALE_DURATION:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TIME_INTERVAL_FOR_TRANSFER:I

    const-string v0, "Mms/MsgDeleteActionAnimation"

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    iput-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iput-boolean p2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;
    .locals 1
    .param p0    # Lcom/android/mms/animation/MsgDeleteActionAnimation;

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    return-object v0
.end method

.method private sortVisibleDelItemsInAscending(Lcom/android/mms/ui/MsgSweepActionListView;[I)[I
    .locals 13
    .param p1    # Lcom/android/mms/ui/MsgSweepActionListView;
    .param p2    # [I

    array-length v11, p2

    new-array v6, v11, [I

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v0, 0x0

    :goto_0
    array-length v11, p2

    if-ge v0, v11, :cond_1

    aget v11, p2, v0

    if-ltz v11, :cond_0

    aget v11, p2, v0

    if-ge v11, v8, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v11

    aget v12, p2, v0

    if-gt v11, v12, :cond_0

    aget v11, p2, v0

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getLastVisiblePosition()I

    move-result v12

    if-gt v11, v12, :cond_0

    add-int/lit8 v10, v9, 0x1

    aget v11, p2, v0

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
    array-length v11, p2

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

    invoke-virtual {p1}, Lcom/android/mms/ui/MsgSweepActionListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int/2addr v11, v12

    aput v11, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected afterDelAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "afterDelAnim Start "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    invoke-interface {v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;->onEndDeleteConversationListAnimationEnd()V

    :cond_0
    return-void
.end method

.method public createDeleteActionThreadAnim()Landroid/view/animation/Animation;
    .locals 9

    const/high16 v5, 0x3f800000

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v1, "createDeleteActionThreadAnim"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc8

    const-wide/16 v2, 0x78

    new-instance v4, Lcom/android/mms/animation/easing/SineInOut70;

    invoke-direct {v4}, Lcom/android/mms/animation/easing/SineInOut70;-><init>()V

    const v8, 0x3dcccccd

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-direct {v0, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    new-instance v1, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$1;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->setOnTransDelAnimListener(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnTransDelAnimListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public deleteActionAnimMultiThread()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v2, "deleteActionAnimMultiThread"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    new-instance v2, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;

    invoke-direct {v2, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$3;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDeleteActionThreadAnim()Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mScaleFadeOutSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method protected hideSelectedChildItems()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readyDeleteActionAnimMultiThread([I)V
    .locals 3
    .param p1    # [I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MsgSweepActionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    iget-object v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->startDeleteActionAnimMultiThread()V

    goto :goto_0
.end method

.method public setOnMsgDeleteActionAnimation(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    iput-object p1, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOnDelActionAnimListener:Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;

    return-void
.end method

.method public startDeleteActionAnimMultiThread()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    iget-object v4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    invoke-direct {p0, v3, v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->sortVisibleDelItemsInAscending(Lcom/android/mms/ui/MsgSweepActionListView;[I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v4, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    invoke-virtual {v3, v4}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->addChildViewBelowWithInvisible([I)V

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDeleteActionAnimMultiThread delItem size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    aget v3, v3, v1

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mOriginalDelItems:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    iput-boolean v6, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;

    invoke-direct {v3, p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$2;-><init>(Lcom/android/mms/animation/MsgDeleteActionAnimation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unDohideSelectedChildItems()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mVisibleDelItems:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->removeChildWithAll()V

    goto :goto_0
.end method

.method public userCancelAnimationEffectForDeleteItems()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->TAG:Ljava/lang/String;

    const-string v4, "userCancelAnimationEffectForDeleteItems "

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsDeleteMsgAnimating:Z

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mChildItemViewMgr:Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;

    invoke-virtual {v3, v0}, Lcom/android/mms/animation/MsgDeleteActionAnimation$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsScaleFadeOutSet:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->afterDelAnim()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mIsTransferDelItemAnim:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/animation/MsgDeleteActionAnimation;->mTransferDelItemAnim:Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation$TransDelAnim;->cancelTransAnimation()V

    goto :goto_1
.end method
