.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "showSensorErrorDialog dismiss!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
