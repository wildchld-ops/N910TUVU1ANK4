.class Lcom/diotek/ime/framework/common/InputManagerImpl$18;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
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

    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungIME"

    const-string v9, "mClipboardReceiver onReceive()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1900()Landroid/content/Context;

    move-result-object v8

    const-string v9, "clipboardEx"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1800(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    move v4, v6

    :goto_0
    const-string v8, "ShowClipboardDialog"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v8, v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->hideFullscreenHwrPanel()V

    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mInputController:Lcom/diotek/ime/framework/input/InputController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1400(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/input/InputController;->finishAndInitByCursorMove()V

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$1500(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->setCandidatesViewShown(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v4, v7

    goto :goto_0

    :cond_5
    move v4, v7

    goto :goto_0

    :cond_6
    const-string v6, "dismissClipboardDialog"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    iget v6, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    :cond_7
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$5202(Lcom/diotek/ime/framework/common/InputManagerImpl;Z)Z

    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$200(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/diotek/ime/framework/view/ViewController;->showFullscreenHwrPanel()V

    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$18;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    goto :goto_1
.end method
