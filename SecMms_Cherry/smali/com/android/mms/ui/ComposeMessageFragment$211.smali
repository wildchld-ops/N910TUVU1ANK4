.class Lcom/android/mms/ui/ComposeMessageFragment$211;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$211;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$211;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showRcsUndeliveredMessageDialog(Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$211;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$211;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showRcsBlockedCotactDialog(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
