.class Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;
.super Ljava/lang/Object;
.source "KeyguardSignatureView.java"

# interfaces
.implements Lcom/android/internal/widget/SignView$OnSignatureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardSignatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockSignatureLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/sec/KeyguardSignatureView;Lcom/android/keyguard/sec/KeyguardSignatureView$1;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/KeyguardSignatureView;
    .param p2    # Lcom/android/keyguard/sec/KeyguardSignatureView$1;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;-><init>(Lcom/android/keyguard/sec/KeyguardSignatureView;)V

    return-void
.end method


# virtual methods
.method public notifySignServiceError()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignServiceRunningLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$300(Lcom/android/keyguard/sec/KeyguardSignatureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "KeyguardSignatureView"

    const-string v2, "notifySignServiceError start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    const-string v2, "oh, sign service is alive now, just set to sign view."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$400(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/policy/ISignServiceInterface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignService(Lcom/android/internal/policy/ISignServiceInterface;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError unbind by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1900(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1800(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const-string v0, "KeyguardSignatureView"

    const-string v2, "onSignServiceError bind sign service by force."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->bindToSignatureLock()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mBoundToSignService:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$2002(Lcom/android/keyguard/sec/KeyguardSignatureView;Z)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAddSignFailed(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onAddSignSucceeded(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onSignatureCleared()V
    .locals 2

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureCleared is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSignatureDetected()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "KeyguardSignatureView"

    const-string v4, "onSignatureDetected is called by SignView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/SignView;->getVerifyResult()Z

    move-result v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "KeyguardSignatureView"

    const-string v4, "Signature verification is successful, let\'s unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->SUCCESS:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v6}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1402(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->FAIL:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportFailedUnlockAttempt()V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->getFailedAttempts()I

    move-result v4

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3, v4}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1402(Lcom/android/keyguard/sec/KeyguardSignatureView;I)I

    const-string v3, "KeyguardSignatureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sign verification is failed, count("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mTotalFailedSignatureAttempts:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1400(Lcom/android/keyguard/sec/KeyguardSignatureView;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSignatureView;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1600(Lcom/android/keyguard/sec/KeyguardSignatureView;J)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$700(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v3

    invoke-interface {v3, v2, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public onSignatureInputting()V
    .locals 3

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->DBG_TOUCH:Z
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureInputting is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$100(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    return-void
.end method

.method public onSignatureStart()V
    .locals 2

    const-string v0, "KeyguardSignatureView"

    const-string v1, "onSignatureStart is called by SignView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSignatureView$UnlockSignatureLister;->this$0:Lcom/android/keyguard/sec/KeyguardSignatureView;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mSignView:Lcom/android/internal/widget/SignView;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$500(Lcom/android/keyguard/sec/KeyguardSignatureView;)Lcom/android/internal/widget/SignView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->INIT:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # getter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1100()Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;->IDENTIFYING:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    # setter for: Lcom/android/keyguard/sec/KeyguardSignatureView;->mState:Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSignatureView;->access$1102(Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;)Lcom/android/keyguard/sec/KeyguardSignatureView$IdentifyState;

    :cond_0
    return-void
.end method
