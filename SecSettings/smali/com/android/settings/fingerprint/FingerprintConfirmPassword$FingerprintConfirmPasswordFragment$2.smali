.class Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;
.super Ljava/lang/Object;
.source "FingerprintConfirmPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showSensorErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "FingerprintConfirmPassword"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
