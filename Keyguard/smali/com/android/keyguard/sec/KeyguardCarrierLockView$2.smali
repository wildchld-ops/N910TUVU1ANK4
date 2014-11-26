.class Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardCarrierLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardCarrierLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1    # Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    iget-object v0, v0, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockView$2;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardCarrierLockView;->mCallButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardCarrierLockView;->access$200(Lcom/android/keyguard/sec/KeyguardCarrierLockView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
