.class Lcom/android/settings/CryptDecryptSettings$2;
.super Ljava/lang/Object;
.source "CryptDecryptSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    # getter for: Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    const v3, 0x7f090e15

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ode_password_quality"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    # getter for: Lcom/android/settings/CryptDecryptSettings;->mThis:Landroid/app/Fragment;
    invoke-static {v2}, Lcom/android/settings/CryptDecryptSettings;->access$600(Lcom/android/settings/CryptDecryptSettings;)Landroid/app/Fragment;

    move-result-object v2

    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    # invokes: Lcom/android/settings/CryptDecryptSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/settings/CryptDecryptSettings;->access$700(Lcom/android/settings/CryptDecryptSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    const/16 v2, 0x37

    # invokes: Lcom/android/settings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v1, v2}, Lcom/android/settings/CryptDecryptSettings;->access$800(Lcom/android/settings/CryptDecryptSettings;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09020f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090210

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
