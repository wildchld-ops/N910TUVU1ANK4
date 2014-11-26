.class Lcom/android/phone/callsettings/DeletePrefix$19;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->deleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Deleteprefix"

    const-string v2, "Fragment finished. We ignore onClick."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1000(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const-string v2, ""

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1100(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$800(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixNumber(I)V
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$900(Lcom/android/phone/callsettings/DeletePrefix;I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixListID:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$800(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const v3, 0x7f09038c

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1200(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, v1, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$19;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method
