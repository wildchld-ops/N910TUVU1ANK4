.class Lcom/android/settings/applications/UninstallMultipleScreen$4;
.super Ljava/lang/Object;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;->showConfirmationDialog()V
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

    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$800(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v4, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/android/settings/applications/UninstallMultipleScreen;->UninstallPackages(Ljava/util/List;)V
    invoke-static {v3, v4}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$4;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method
