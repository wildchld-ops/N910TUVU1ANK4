.class Lcom/android/keyguard/KeyguardHostView$16;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$16;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public launchCamera()V
    .locals 0

    return-void
.end method

.method public launchSHealth()V
    .locals 0

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method public showWipeDialog(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .param p1    # J

    return-void
.end method
