.class Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$1;
.super Ljava/lang/Object;
.source "FingerprintSupportingFeatures.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->registerSamsungAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->access$000(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->checkedChangeListener()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;->access$100(Lcom/android/settings/fingerprint/FingerprintSupportingFeatures;)V

    return-void
.end method
