.class Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientsEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/GroupMessagingRecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$2;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
    invoke-static {v0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientsEditorHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
