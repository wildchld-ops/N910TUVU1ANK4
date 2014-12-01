.class Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;
.super Ljava/lang/Object;
.source "GroupMessagingRecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
    invoke-static {v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientsEditor$1;->this$0:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    # getter for: Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->mGroupList:Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
    invoke-static {v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->access$000(Lcom/android/mms/ui/GroupMessagingRecipientsEditor;)Lcom/android/mms/ui/GroupMessagingRecipientListActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientsEditorHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
