.class Lcom/android/incallui/CallCardVideoFragment$1;
.super Landroid/os/Handler;
.source "CallCardVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v1, 0x8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->isPossibleToHideBanner()Z
    invoke-static {v0}, Lcom/android/incallui/CallCardVideoFragment;->access$300(Lcom/android/incallui/CallCardVideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallCardVideoFragment;->access$400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/incallui/CallCardVideoFragment;->access$500(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardVideoFragment$1;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mModifyRequestLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/incallui/CallCardVideoFragment;->access$600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x66 -> :sswitch_2
        0xd5 -> :sswitch_0
    .end sparse-switch
.end method
