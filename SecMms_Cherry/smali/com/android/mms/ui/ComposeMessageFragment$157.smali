.class Lcom/android/mms/ui/ComposeMessageFragment$157;
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v0, v2, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$157;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v0, v2, v2, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3600(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
