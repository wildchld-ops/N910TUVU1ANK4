.class Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$3;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->initializeBiometricUnlockView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    return-void
.end method
