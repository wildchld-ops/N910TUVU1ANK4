.class Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;
.super Landroid/os/Handler;
.source "VoiceAndVideoCallTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/VoiceAndVideoCallTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "VoiceAndVideoCallTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # operator++ for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callTimerCount:I
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$808(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)I

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # invokes: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->dispCallDuration()V
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$900(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    iget-object v0, v0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # invokes: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->runVoiceCallAnimation()V
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$1000(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # invokes: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->callActiveScreenSettings()V
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$1100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    # getter for: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$100(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/help/VoiceAndVideoCallTutorial$4;->this$0:Lcom/android/incallui/help/VoiceAndVideoCallTutorial;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->startActivity(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/help/VoiceAndVideoCallTutorial;->access$1200(Lcom/android/incallui/help/VoiceAndVideoCallTutorial;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
