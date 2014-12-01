.class Lcom/android/settings/nearby/DownloadListPreference$1;
.super Ljava/lang/Object;
.source "DownloadListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/DownloadListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/DownloadListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/DownloadListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v0, "DownloadListPreference"

    const-string v1, "showDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    # getter for: Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    invoke-static {v3}, Lcom/android/settings/nearby/DownloadListPreference;->access$000(Lcom/android/settings/nearby/DownloadListPreference;)Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->isEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    # getter for: Lcom/android/settings/nearby/DownloadListPreference;->mAdapter:Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
    invoke-static {v0}, Lcom/android/settings/nearby/DownloadListPreference;->access$000(Lcom/android/settings/nearby/DownloadListPreference;)Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    # getter for: Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/nearby/DownloadListPreference;->access$100(Lcom/android/settings/nearby/DownloadListPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    # getter for: Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/nearby/DownloadListPreference;->access$100(Lcom/android/settings/nearby/DownloadListPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$1;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    # getter for: Lcom/android/settings/nearby/DownloadListPreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/nearby/DownloadListPreference;->access$100(Lcom/android/settings/nearby/DownloadListPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
