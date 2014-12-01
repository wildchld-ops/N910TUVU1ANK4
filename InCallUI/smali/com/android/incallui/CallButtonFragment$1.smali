.class Lcom/android/incallui/CallButtonFragment$1;
.super Landroid/os/Handler;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    # invokes: Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    # invokes: Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallButtonFragment;->access$000(Lcom/android/incallui/CallButtonFragment;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment$1;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(ZZ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method
