.class Lcom/android/settings/fingerprint/RegisterFingerprint$13;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const-string v0, "RegisterFingerprint"

    const-string v1, "startTipDialog setOnDismissListener called!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3902(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->initRegisterfingerprint()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.android.settings.permission.unlock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$13;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4102(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
