.class Lcom/android/systemui/recent/RecentsPanelView$22;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->startAppListShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiwindowButtonAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$5402(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1    # Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->getApplistIndicatorSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ScrollView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mDisplayHeight:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2800(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsMultiWindowButton:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$6300(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$22;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListScrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
