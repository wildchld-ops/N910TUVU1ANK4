.class Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->isSupportedOnehand(Landroid/content/Context;)Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3000(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintOnehandGrip"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "for_ode"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_fingerIndex"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
