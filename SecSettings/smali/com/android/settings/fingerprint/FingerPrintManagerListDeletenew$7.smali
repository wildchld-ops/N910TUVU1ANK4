.class Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "FingerPrintManagerListDeletenew"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeAllEnrolledFingers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$600(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$7;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method
