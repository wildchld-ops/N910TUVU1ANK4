.class Lcom/android/systemui/recent/RecentsPanelView$23;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/RecentsPanelView;->getItemIndex(Landroid/view/View;)I

    move-result v3

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$6502(Lcom/android/systemui/recent/RecentsPanelView;I)I

    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon clicked :: appIconIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v4}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6400(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getComponentInfo(I)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon clicked :: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppListController:Lcom/android/systemui/recent/multiwindow/AppListController;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$6600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/multiwindow/AppListController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mAppIconIndex:I
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$6500(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/multiwindow/AppListController;->startActivity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$5900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$23;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$2000(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V

    goto :goto_0
.end method
