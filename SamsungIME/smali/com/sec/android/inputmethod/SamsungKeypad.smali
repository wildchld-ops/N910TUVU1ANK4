.class public Lcom/sec/android/inputmethod/SamsungKeypad;
.super Lcom/diotek/ime/framework/common/AbstractInputMethod;
.source "SamsungKeypad.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field leftaltstate:I

.field mBeforeShowSoftFuncKbd:Z

.field private mCandateArea:Landroid/view/View;

.field public mExtractArea:Landroid/view/View;

.field protected mInputLanguage:I

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsConfigurationChanged:Z

.field mIsForceShowSIP:Z

.field private final mIsHardwareAcceleratedDrawingEnabled:Z

.field mIsLongPress:Z

.field private mIsShowSIP:Z

.field public mKeyPreviewBackingView:Landroid/view/View;

.field private mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/common/AbstractInputMethod;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    iput-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    invoke-static {p0}, Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    const-string v0, "SamsungKeypad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware accelerated drawing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypad;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private forceShowSip()V
    .locals 4

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    :cond_0
    return-void
.end method

.method private isExceptionalModelForUseKCM()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/diotek/ime/framework/common/Constant;->EXCEPTIONAL_MODEL_FOR_USE_KCM:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/diotek/ime/framework/common/Constant;->EXCEPTIONAL_MODEL_FOR_USE_KCM:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Dump start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/common/InputManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SamsungIME"

    const-string v1, "Cannot dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onBindInput()V
    .locals 0

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onBindInput()V

    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->computeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/common/InputManager;->beforeConfigrationChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/common/InputManager;->afterConfigrationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->setMultiTouchPreviewEnabled(Z)V

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    const/high16 v3, 0x7f0d0000

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, p0}, Lcom/diotek/ime/framework/common/InputManager;->initModulesWithService(Lcom/diotek/ime/framework/common/AbstractInputMethod;)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-static {}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getInstance()Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRemoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sec/android/inputmethod/SamsungKeypad$1;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/SamsungKeypad$1;-><init>(Lcom/sec/android/inputmethod/SamsungKeypad;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v0}, Lcom/diotek/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    throw v3
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->onDestroy()V

    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->evaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isCarInDrivingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    return-void
.end method

.method public onFinishInput()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->finishInput()V

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->finishInputView(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v10

    const/high16 v11, 0x40000000

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_5

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x14

    if-eq v10, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x15

    if-eq v10, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x16

    if-eq v10, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x17

    if-eq v10, v11, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p2}, Lcom/diotek/ime/framework/common/InputManager;->processKnobKeyEvents(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    :cond_5
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isExceptionalModelForUseKCM()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "INPUT_LANGUAGE"

    const/high16 v12, 0x656e0000

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x656e5553

    if-eq v10, v11, :cond_6

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x656e4742

    if-ne v10, v11, :cond_a

    :cond_6
    const/4 v10, 0x4

    if-eq p1, v10, :cond_a

    const/16 v10, 0x1d

    if-lt p1, v10, :cond_7

    const/16 v10, 0x36

    if-le p1, v10, :cond_8

    :cond_7
    const/4 v10, 0x7

    if-lt p1, v10, :cond_a

    const/16 v10, 0x10

    if-gt p1, v10, :cond_a

    :cond_8
    const/16 v10, 0xe4

    if-eq p1, v10, :cond_a

    const/16 v10, 0x3e

    if-ne p1, v10, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit16 v10, v10, 0xc1

    if-nez v10, :cond_a

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "INPUT_LANGUAGE"

    const/high16 v12, 0x656e0000

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/4 v10, 0x4

    if-eq p1, v10, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6b6f0000

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6a610000

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x7a680000

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a68434e

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a68484b

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v11, 0x7a685457

    if-eq v10, v11, :cond_c

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x74680000

    if-eq v10, v11, :cond_c

    const/16 v10, 0xe4

    if-eq p1, v10, :cond_c

    const/16 v10, 0x3e

    if-ne p1, v10, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit16 v10, v10, 0xc1

    if-nez v10, :cond_c

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_18

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_19

    if-eqz v3, :cond_19

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_d

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_19

    :cond_d
    const/4 v10, 0x7

    if-lt p1, v10, :cond_e

    const/16 v10, 0x10

    if-le p1, v10, :cond_f

    :cond_e
    const/16 v10, 0x11

    if-eq p1, v10, :cond_f

    const/16 v10, 0x12

    if-ne p1, v10, :cond_11

    :cond_f
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->showSoftFuncKbd()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    const/16 v10, 0x11

    if-eq p1, v10, :cond_10

    const/16 v10, 0x12

    if-ne p1, v10, :cond_11

    :cond_10
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    :cond_11
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1b

    const/4 v6, 0x1

    :goto_3
    if-eqz v6, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-nez v10, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0x43

    if-eq p1, v10, :cond_14

    const/4 v10, 0x7

    if-lt p1, v10, :cond_12

    const/16 v10, 0x10

    if-le p1, v10, :cond_13

    :cond_12
    const/16 v10, 0x11

    if-eq p1, v10, :cond_13

    const/16 v10, 0x12

    if-ne p1, v10, :cond_16

    :cond_13
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_14
    if-eqz v3, :cond_16

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_15

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_16

    :cond_15
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    :cond_16
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-nez v10, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    if-lez v10, :cond_1c

    :cond_17
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_19
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-direct {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    goto/16 :goto_2

    :cond_1a
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    goto/16 :goto_2

    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_1c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit8 v8, v10, 0x10

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_1d

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    iget v10, v10, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v11, 0x400000ff

    and-int v2, v10, v11

    :cond_1d
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v10

    if-nez v10, :cond_1e

    if-eqz v5, :cond_1f

    :cond_1e
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isNotUseAltGrKeyInCountry()Z

    move-result v10

    if-eqz v10, :cond_1f

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->isHwDpadKey(ILandroid/view/KeyEvent;)Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_1f
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_22

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_22

    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_20

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_20
    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_22

    if-eqz v3, :cond_22

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_21

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v10, :cond_22

    :cond_21
    const/4 v10, 0x7

    if-lt p1, v10, :cond_22

    const/16 v10, 0x10

    if-gt p1, v10, :cond_22

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_22
    const/16 v10, 0x43

    if-ne p1, v10, :cond_23

    const/4 v10, 0x3

    if-ne v2, v10, :cond_23

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_23

    const-string v10, "com.sec.pcw"

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_23
    const/16 v10, 0x39

    if-ne p1, v10, :cond_24

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    if-nez v10, :cond_27

    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    :cond_24
    :goto_4
    iget v10, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_29

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_25

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_29

    :cond_25
    const/16 v10, 0x39

    if-eq p1, v10, :cond_26

    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_26

    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    :cond_26
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_27
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_28

    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_4

    :cond_28
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_24

    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_4

    :cond_29
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_2a

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->setHWkeyboardConnectionSetting()V

    :cond_2a
    const/16 v10, 0x37

    if-eq p1, v10, :cond_2b

    const/16 v10, 0x38

    if-ne p1, v10, :cond_2c

    :cond_2b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-nez v10, :cond_2c

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_2c
    iget v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v11, 0x6b6f0000

    if-ne v10, v11, :cond_2d

    const/4 v10, 0x7

    if-lt p1, v10, :cond_2d

    const/16 v10, 0x10

    if-gt p1, v10, :cond_2d

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_2d
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v10

    if-nez v10, :cond_2e

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_34

    :cond_2e
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_2f

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v10

    if-eqz v10, :cond_32

    :cond_2f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_32

    const/16 v10, 0x10

    if-eq v8, v10, :cond_32

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-eqz v10, :cond_31

    const/16 v10, 0x1d

    if-eq p1, v10, :cond_30

    const/16 v10, 0x34

    if-eq p1, v10, :cond_30

    const/16 v10, 0x1f

    if-eq p1, v10, :cond_30

    const/16 v10, 0x32

    if-ne p1, v10, :cond_31

    :cond_30
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_31
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    :cond_32
    :goto_5
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_3a

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.hancom."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3a

    if-nez v6, :cond_3a

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-nez v10, :cond_33

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_33

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v10

    if-eqz v10, :cond_3a

    :cond_33
    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v10, :cond_3a

    iget v10, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v10, :cond_3a

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v10

    if-nez v10, :cond_3a

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_34
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-nez v10, :cond_32

    const/16 v10, 0x10

    if-eq v8, v10, :cond_32

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_35

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v10

    if-nez v10, :cond_35

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_35

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v10

    if-nez v10, :cond_35

    if-eqz v6, :cond_32

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-eqz v10, :cond_32

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    if-eqz v10, :cond_32

    const-string v10, "com.sec.android.app.sbrowser"

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    const/4 v10, 0x7

    if-lt p1, v10, :cond_32

    const/16 v10, 0x10

    if-gt p1, v10, :cond_32

    :cond_35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v10

    if-nez v10, :cond_36

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_36
    const/16 v10, 0x1d

    if-lt p1, v10, :cond_37

    const/16 v10, 0x36

    if-le p1, v10, :cond_38

    :cond_37
    const/4 v10, 0x7

    if-lt p1, v10, :cond_39

    const/16 v10, 0x10

    if-gt p1, v10, :cond_39

    :cond_38
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_39
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_5

    :cond_3a
    if-nez v9, :cond_0

    if-eqz v5, :cond_3b

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_3b
    const/4 v10, 0x4

    if-ne p1, v10, :cond_3d

    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v7

    if-eqz v7, :cond_3c

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_3c
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e02cb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendTalkbackDescription(Ljava/lang/String;)V

    :cond_3d
    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const/high16 v3, 0x656e0000

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x6a610000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x7a680000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a68434e

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a68484b

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v2, 0x7a685457

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v2, 0x74680000

    if-eq v1, v2, :cond_2

    const/16 v1, 0xe4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0xc1

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v6, 0x3d

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    const/high16 v5, 0x40000000

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0316

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setAlertDialogMessage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showAlertDialog()V

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x13

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x14

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x15

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x16

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x17

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, p2}, Lcom/diotek/ime/framework/common/InputManager;->processKnobKeyEvents(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v3, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    if-eq p1, v8, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6a610000

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x7a680000

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68434e

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68484b

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a685457

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-eq v3, v5, :cond_7

    const/16 v3, 0xe4

    if-eq p1, v3, :cond_7

    const/16 v3, 0x3e

    if-ne p1, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, 0xc1

    if-nez v3, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    if-eqz v3, :cond_8

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    if-ne v3, v4, :cond_a

    const/16 v3, 0x11

    if-eq p1, v3, :cond_9

    const/16 v3, 0x12

    if-ne p1, v3, :cond_a

    :cond_9
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v4, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    if-nez v3, :cond_e

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_b

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-nez v3, :cond_c

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_e

    if-eqz v1, :cond_e

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_d

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v3, :cond_e

    :cond_d
    const/4 v3, 0x7

    if-lt p1, v3, :cond_e

    const/16 v3, 0x10

    if-gt p1, v3, :cond_e

    move v2, v4

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_10
    if-nez v2, :cond_0

    if-ne p1, v8, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->sendSideSyncKeyCode(I)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    move v2, v4

    goto/16 :goto_0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->startInput(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStartInputView requsted restarting value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStartInputView After call super -  restarting value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->initialzeSettingValues()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v6, :cond_7

    move v2, v6

    :goto_0
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "com.sec.android.app.sbrowser"

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    :cond_0
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8, v7, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->updateWacomState()V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnificationGesture(Landroid/content/Context;)Z

    move-result v8

    if-ne v8, v6, :cond_2

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    const/4 v8, 0x7

    if-eq v0, v8, :cond_1

    const/16 v8, 0x8

    if-ne v0, v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    :cond_2
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v3, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {v3}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;-><init>()V

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->isPowerSavingModeON(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/diotek/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_3
    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v8, "user_choice_to_vibration_on"

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sip_key_feedback_vibration"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "sip_key_feedback_vibration"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    iget-object v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->startInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-eqz v6, :cond_6

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    :cond_6
    return-void

    :cond_7
    move v2, v7

    goto/16 :goto_0

    :cond_8
    const-string v8, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sip_key_feedback_vibration"

    const-string v10, "user_choice_to_vibration_on"

    invoke-interface {v4, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v6, "doing_one_in_power_saving_mode"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SK] <onUpdateSelection> oldSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/diotek/ime/framework/common/InputManager;->updateSelection(IIIIII)V

    return-void
.end method

.method public onViewClicked(Z)V
    .locals 2

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "onViewClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->viewClicked(Z)V

    :cond_1
    return-void
.end method

.method public onWindowHidden()V
    .locals 2

    const-string v0, "SamsungIME"

    const-string v1, "onWindowHidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->windowHidden()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setIsMovable(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    return-void
.end method

.method public onWindowShown()V
    .locals 2

    const-string v0, "SamsungIME"

    const-string v1, "onWindowShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->sendTalkbackDescriptionOnWindowShown()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setIsMovable(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x102001d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    const v3, 0x102001c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setExtractArea(Landroid/view/View;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v3, p1, Lcom/diotek/ime/framework/view/PopupCandidateView;

    if-nez v3, :cond_1

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->setBackingView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v5, 0x7f0a0005

    invoke-interface {v3, v5}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/high16 v3, 0x40400000

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090148

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public setCandidatesViewShown(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
