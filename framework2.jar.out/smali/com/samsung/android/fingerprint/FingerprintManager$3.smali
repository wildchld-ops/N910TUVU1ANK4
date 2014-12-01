.class Lcom/samsung/android/fingerprint/FingerprintManager$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivitySaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "onActivityStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$3;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    :cond_0
    return-void
.end method
