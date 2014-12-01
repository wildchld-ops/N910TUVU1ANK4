.class Lcom/android/systemui/recent/RecentsPanelView$19;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->startRecentListHideAnimation(Z)V
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$19;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$19;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$3800(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$19;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$5900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$19;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startAppListShowAnimation()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$6000(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
