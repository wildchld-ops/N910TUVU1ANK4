.class Lcom/android/incallui/InCallButtonQvgaVideoFragment$2;
.super Landroid/os/Handler;
.source "InCallButtonQvgaVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallButtonQvgaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$2;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$2;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # invokes: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->isPossibleToHideButton()Z
    invoke-static {v0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$300(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$2;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->toggleButtonContainer()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$2;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$100(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Landroid/os/Handler;

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
