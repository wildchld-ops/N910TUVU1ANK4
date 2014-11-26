.class Lcom/android/phone/callsettings/RejectCallWithMsg$7;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "softkeyLeftRunm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v7, v7, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v5}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finished. We ignore deleteRejectMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V
    invoke-static {v5, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1400(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1500(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1300(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1600(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1700(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runrun : isDeleted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v9}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090a38

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1800(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;
    invoke-static {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1700(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1100(Lcom/android/phone/callsettings/RejectCallWithMsg;)I

    move-result v5

    if-ne v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    iget-object v5, v5, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1002(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_1
.end method
