.class Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCarrierLockPlusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView$3;->this$0:Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;

    # invokes: Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->updateButtonVisibility(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;->access$400(Lcom/android/keyguard/sec/KeyguardCarrierLockPlusView;I)V

    return-void
.end method
