.class Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;
.super Ljava/lang/Object;
.source "SecKeyguardFlightModeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

.field final synthetic val$isUsb3Enabled:Z

.field final synthetic val$manager:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;ZLandroid/hardware/usb/UsbManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iput-boolean p2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->val$isUsb3Enabled:Z

    iput-object p3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->val$manager:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    const-string v2, "flightmode"

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$000(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsb3Enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->val$isUsb3Enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->val$isUsb3Enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->val$manager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on_reason_usb3"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
