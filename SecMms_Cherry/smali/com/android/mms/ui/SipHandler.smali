.class public Lcom/android/mms/ui/SipHandler;
.super Landroid/content/BroadcastReceiver;
.source "SipHandler.java"


# static fields
.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final TAG:Ljava/lang/String; = "Mms/SipHandler"

.field private static sIsSipVisible:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mIsOnScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SipHandler;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/SipHandler;

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isSipVisible()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return v0
.end method


# virtual methods
.method public HasKeyboard()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public hideSip()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AxT9IME.isVisibleWindow"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SipHandler;->mIsOnScreen:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SipHandler$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SipHandler$2;-><init>(Lcom/android/mms/ui/SipHandler;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setOnScreen(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/SipHandler;->mIsOnScreen:Z

    return-void
.end method

.method public setSipVisible(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public showSip()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/mms/ui/SipHandler;->mIsOnScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->HasKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Mms/SipHandler"

    const-string v1, "show sip but no screen on or has keyboard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    const-string v0, "Mms/SipHandler"

    const-string v1, "showSip"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/SipHandler;->sIsSipVisible:Z

    goto :goto_0
.end method

.method public showSipDelayed(Landroid/os/Handler;I)V
    .locals 4
    .param p1    # Landroid/os/Handler;
    .param p2    # I

    const-string v1, "Mms/SipHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSipDelayed,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/SipHandler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SipHandler$1;-><init>(Lcom/android/mms/ui/SipHandler;)V

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SipHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
