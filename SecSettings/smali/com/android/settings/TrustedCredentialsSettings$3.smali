.class Lcom/android/settings/TrustedCredentialsSettings$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$2900(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mChallengeSucceeded:Z
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3000(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings;->ensurePin()V
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3100(Lcom/android/settings/TrustedCredentialsSettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$3;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/settings/TrustedCredentialsSettings;->showtConfirmDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3200(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_0
.end method
