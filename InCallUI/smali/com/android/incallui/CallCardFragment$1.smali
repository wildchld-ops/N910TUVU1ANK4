.class Lcom/android/incallui/CallCardFragment$1;
.super Landroid/os/Handler;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "BaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "receive RECORDING_GUIDE_POPUP"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x3

    # invokes: Lcom/android/incallui/CallCardFragment;->manageVoiceRecordingPopup(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->startCallEndTimeBlink()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Stop animation in IDLE or ACTIVE state!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->destroyImageCache()V
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->resetCallCardAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->setCallCardAnimation()V
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)V

    const/16 v0, 0x6e

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCurrentPeriodMarkIndex:I
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$400(Lcom/android/incallui/CallCardFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->mCurrentPeriodMarkIndex:I
    invoke-static {v0, v2}, Lcom/android/incallui/CallCardFragment;->access$402(Lcom/android/incallui/CallCardFragment;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # operator++ for: Lcom/android/incallui/CallCardFragment;->mCurrentPeriodMarkIndex:I
    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->access$408(Lcom/android/incallui/CallCardFragment;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const/16 v0, 0x78

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # setter for: Lcom/android/incallui/CallCardFragment;->isUpgrading:Z
    invoke-static {v0, v2}, Lcom/android/incallui/CallCardFragment;->access$702(Lcom/android/incallui/CallCardFragment;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x6e -> :sswitch_2
        0x78 -> :sswitch_3
        0x82 -> :sswitch_0
        0xbb9 -> :sswitch_4
    .end sparse-switch
.end method
