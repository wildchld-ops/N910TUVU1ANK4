.class Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDeletenew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->deRegisterAllFingerprint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "FingerPrintManagerListDeletenew"

    const-string v2, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->resetFingerprintSupportingFeatures()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeAllEnrolledFingers()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
