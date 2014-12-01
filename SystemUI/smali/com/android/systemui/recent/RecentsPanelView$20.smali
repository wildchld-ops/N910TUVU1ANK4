.class Lcom/android/systemui/recent/RecentsPanelView$20;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->startRecentListShowAnimation()V
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiwindowButtonAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$5402(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$3800(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$5900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$20;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$5900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method
