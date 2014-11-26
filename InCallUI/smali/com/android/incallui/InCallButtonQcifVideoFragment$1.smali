.class Lcom/android/incallui/InCallButtonQcifVideoFragment$1;
.super Landroid/os/Handler;
.source "InCallButtonQcifVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallButtonQcifVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallButtonQcifVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    # invokes: Lcom/android/incallui/InCallButtonQcifVideoFragment;->isPossibleToHideButton()Z
    invoke-static {v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->access$100(Lcom/android/incallui/InCallButtonQcifVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQcifVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQcifVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQcifVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->access$200(Lcom/android/incallui/InCallButtonQcifVideoFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
