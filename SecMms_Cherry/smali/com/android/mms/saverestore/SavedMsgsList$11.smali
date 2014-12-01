.class Lcom/android/mms/saverestore/SavedMsgsList$11;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SavedMsgsList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const v5, 0x7f0c037b

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mCurrentFilePath:Ljava/io/File;
    invoke-static {v3}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1700(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->convFiles:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1100(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->filesAdapter:Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1900(Lcom/android/mms/saverestore/SavedMsgsList;)Lcom/android/mms/saverestore/SavedMsgsList$FileArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # invokes: Lcom/android/mms/saverestore/SavedMsgsList;->updateEmptyView()V
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2000(Lcom/android/mms/saverestore/SavedMsgsList;)V

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mTempFilesSelected:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1600(Lcom/android/mms/saverestore/SavedMsgsList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2100(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mMsgsRestoreActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$2100(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/view/ActionMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$11;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$1800(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
