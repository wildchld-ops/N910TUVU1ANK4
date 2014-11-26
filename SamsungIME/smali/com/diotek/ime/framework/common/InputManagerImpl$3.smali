.class Lcom/diotek/ime/framework/common/InputManagerImpl$3;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;

    const/16 v4, 0xf

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsStartInputViewDelayed:Z
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$700(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsStartInputViewDelayed:Z
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$702(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    iget-object v1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDelayedRestarting:Z
    invoke-static {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$900(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v2

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->startInputViewContinue(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1000(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mOrientationChanged:Z
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1102(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$802(Lcom/diotek/ime/framework/common/InputManagerImpl;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/EditorInfo;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x1

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->setTSPExtendedMode(Z)V
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1200(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/diotek/ime/framework/common/InputManagerImpl;->setTSPExtendedMode(Z)V
    invoke-static {v0, v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1200(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0, v3}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setIsPendingUpdateCandidateView(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputController;->backupFullText()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1300(Lcom/diotek/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->showModeChangePopupKeyboard()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x26 -> :sswitch_3
        0x2f -> :sswitch_4
    .end sparse-switch
.end method
