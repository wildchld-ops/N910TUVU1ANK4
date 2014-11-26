.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickMultiWindowButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p2    # Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiwindowButtonAnimating:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5400(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiwindowButtonAnimating:Z
    invoke-static {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$5402(Lcom/android/systemui/recent/RecentsPanelView;Z)Z

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$200(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiWindow:Z
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5500(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x2

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->setRecentPanelBackground(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$5600(Lcom/android/systemui/recent/RecentsPanelView;I)V

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startRecentListHideAnimation(Z)V
    invoke-static {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$5700(Lcom/android/systemui/recent/RecentsPanelView;Z)V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiWindow:Z
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$5500(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_3
    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mIsMultiWindow:Z
    invoke-static {v4, v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$5502(Lcom/android/systemui/recent/RecentsPanelView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->setRecentPanelBackground(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$5600(Lcom/android/systemui/recent/RecentsPanelView;I)V

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickMultiWindowButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startAppListHideAnimation()V
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$5800(Lcom/android/systemui/recent/RecentsPanelView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method
