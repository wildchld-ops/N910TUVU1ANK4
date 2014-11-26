.class public Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;
.super Landroid/app/Fragment;
.source "FingerprintConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintConfirmFragment"
.end annotation


# instance fields
.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field mIdentifyDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)V
    .locals 0
    .param p0    # Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0    # Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private showSensorErrorDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0918e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0918ef

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
