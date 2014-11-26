.class Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;
.super Landroid/os/Handler;
.source "AcceptingAndRejectingCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$000(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I
    invoke-static {v0, v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$002(Lcom/android/incallui/help/AcceptingAndRejectingCalls;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$100(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # operator++ for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mCurrentPeriodMarkIndex:I
    invoke-static {v2}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$008(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const/16 v0, 0x78

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # operator++ for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->callTimerCount:I
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$308(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)I

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$1;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # invokes: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->dispCallDuration()V
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$400(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V

    const/16 v0, 0x64

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_2
        0x78 -> :sswitch_1
    .end sparse-switch
.end method
