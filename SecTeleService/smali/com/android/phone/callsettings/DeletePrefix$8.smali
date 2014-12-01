.class Lcom/android/phone/callsettings/DeletePrefix$8;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->softkeyLeftRun(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$800(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixNumber(I)V
    invoke-static {v3, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$900(Lcom/android/phone/callsettings/DeletePrefix;I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$1000(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const-string v4, ""

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/DeletePrefix;->access$1100(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixListID:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$800(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updatePrefixNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$100(Lcom/android/phone/callsettings/DeletePrefix;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const v5, 0x7f09038c

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/DeletePrefix;->getString(I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->displayToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/callsettings/DeletePrefix;->access$1200(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->notifyDataSetInvalidated()V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix;->selectAll:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mListAdapter:Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/DeletePrefix;->access$400(Lcom/android/phone/callsettings/DeletePrefix;)Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updatePrefixNumberList()V
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$100(Lcom/android/phone/callsettings/DeletePrefix;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mState:I
    invoke-static {v3}, Lcom/android/phone/callsettings/DeletePrefix;->access$200(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/DeletePrefix$8;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v3, v3, Lcom/android/phone/callsettings/DeletePrefix;->emptyText:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
