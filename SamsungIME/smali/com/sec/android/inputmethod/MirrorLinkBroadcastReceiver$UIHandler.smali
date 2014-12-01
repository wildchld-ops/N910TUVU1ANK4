.class public Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;
.super Landroid/os/Handler;
.source "MirrorLinkBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public SendCreateDialogBuilderMessage()V
    .locals 3

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public SendUpdateViewMessage()V
    .locals 3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v1, v1, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v1, v1, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->createAlertDialogForCarModeKeyboard()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
