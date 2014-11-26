.class Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V
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

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    const/16 v1, 0x17

    if-ne p2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$100(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->onSelectItem(I)V

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
