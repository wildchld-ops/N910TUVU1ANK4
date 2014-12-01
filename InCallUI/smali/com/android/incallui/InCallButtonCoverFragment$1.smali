.class Lcom/android/incallui/InCallButtonCoverFragment$1;
.super Landroid/os/Handler;
.source "InCallButtonCoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallButtonCoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallButtonCoverFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallButtonCoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallButtonCoverFragment$1;->this$0:Lcom/android/incallui/InCallButtonCoverFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment$1;->this$0:Lcom/android/incallui/InCallButtonCoverFragment;

    # getter for: Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallButtonCoverFragment;->access$000(Lcom/android/incallui/InCallButtonCoverFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment$1;->this$0:Lcom/android/incallui/InCallButtonCoverFragment;

    # getter for: Lcom/android/incallui/InCallButtonCoverFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallButtonCoverFragment;->access$000(Lcom/android/incallui/InCallButtonCoverFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonCoverFragment$1;->this$0:Lcom/android/incallui/InCallButtonCoverFragment;

    # invokes: Lcom/android/incallui/InCallButtonCoverFragment;->dismissPopupWindow()V
    invoke-static {v0}, Lcom/android/incallui/InCallButtonCoverFragment;->access$100(Lcom/android/incallui/InCallButtonCoverFragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
