.class Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromXDeltaTransfer:F

.field protected mFromYDeltaTransfer:F

.field protected mIsAlignLeft:Z

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveXTransfer:F

.field protected mMoveYTransfer:F

.field protected mToXDeltaTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 1

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    iput-object p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isAlignLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 7

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v1, v5

    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    float-to-int v0, v4

    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v4, v4, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v2, v3

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    int-to-float v4, v1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    int-to-float v4, v0

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetLeftAndRight(II)V

    int-to-float v4, v0

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    int-to-float v4, v1

    iput v4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    :cond_0
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public userOffsetLeftAndRight(II)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->isAlignLeft(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method public userSetTransfer(FFFF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    iput p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    iput p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iput p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    iput p2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    return-void
.end method
