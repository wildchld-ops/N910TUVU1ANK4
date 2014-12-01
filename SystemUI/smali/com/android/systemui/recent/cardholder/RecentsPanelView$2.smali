.class Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;
.super Landroid/database/ContentObserver;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;

    iget-object v4, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindowUtils/AppListController;
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$800(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Lcom/android/systemui/recent/multiwindowUtils/AppListController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/recent/multiwindowUtils/AppListController;->isSupportMultiWindow(Lcom/android/systemui/recent/cardholder/TaskDescription;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView$ViewHolder;->multiWindowBtn:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->updateUiElements()V
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # invokes: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showIfReady()V
    invoke-static {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$1100(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    return-void
.end method
