.class Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbConnectionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/keyguard/KeyguardViewMediator$1;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewMediator;
    .param p2    # Lcom/android/keyguard/KeyguardViewMediator$1;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;-><init>(Lcom/android/keyguard/KeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2402(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->isAdbEnabled()Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v2

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mNeedReenableAdbAfterUnlock:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/keyguard/KeyguardViewMediator;->setAdbModeEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/keyguard/KeyguardViewMediator;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$UsbConnectionBroadcastReceiver;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/keyguard/KeyguardViewMediator;->mIsUsbAlreadyConnected:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator;->access$2402(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    goto :goto_0
.end method
