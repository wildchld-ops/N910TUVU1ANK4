.class final Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/cardholder/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v3, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$900(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$2000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->access$000(Lcom/android/systemui/recent/cardholder/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/TaskDescription;

    iget v3, v2, Lcom/android/systemui/recent/cardholder/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method
