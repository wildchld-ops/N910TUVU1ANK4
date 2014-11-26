.class public interface abstract Lcom/android/keyguard/KeyguardSecurityCallback;
.super Ljava/lang/Object;
.source "KeyguardSecurityCallback.java"


# virtual methods
.method public abstract dismiss(Z)V
.end method

.method public abstract getFailedAttempts()I
.end method

.method public abstract isVerifyUnlockOnly()Z
.end method

.method public abstract launchCamera()V
.end method

.method public abstract launchSHealth()V
.end method

.method public abstract reportFailedUnlockAttempt()V
.end method

.method public abstract reportSuccessfulUnlockAttempt()V
.end method

.method public abstract setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
.end method

.method public abstract showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
.end method

.method public abstract showWipeDialog(I)V
.end method

.method public abstract userActivity(J)V
.end method
