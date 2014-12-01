.class Lcom/android/settings/applications/UninstallMultipleScreen$1;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$100(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$100(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mSelectAllButton:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/UninstallMultipleScreen$1;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mDone:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
