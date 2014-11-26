.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const v1, 0x7f0c030a

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;
    invoke-static {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$200(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    # invokes: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V
    invoke-static {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$300(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
