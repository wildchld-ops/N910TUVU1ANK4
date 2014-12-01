.class Lcom/android/settings/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ae6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v5, :cond_2

    iput-boolean v8, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v1

    const-string v5, "enterprise_policy"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed()Z

    move-result v5

    and-int/2addr v3, v5

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v9}, Landroid/app/enterprise/VpnPolicy;->isUserChangeProfilesAllowed(Z)Z

    move-result v5

    and-int/2addr v3, v5

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    new-instance v6, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/settings/CredentialStorage;->access$302(Lcom/android/settings/CredentialStorage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$300(Lcom/android/settings/CredentialStorage;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$300(Lcom/android/settings/CredentialStorage;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$300(Lcom/android/settings/CredentialStorage;)Landroid/app/ProgressDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const v7, 0x7f090ada

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    # getter for: Lcom/android/settings/CredentialStorage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/settings/CredentialStorage;->access$300(Lcom/android/settings/CredentialStorage;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    new-instance v5, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v6, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settings/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
