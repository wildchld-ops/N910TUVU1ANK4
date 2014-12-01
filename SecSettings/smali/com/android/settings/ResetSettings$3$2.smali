.class Lcom/android/settings/ResetSettings$3$2;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v0}, Lcom/android/settings/ResetSettings;->resetGlobalSettings()V

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    # getter for: Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/ResetSettings;->access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v2, v2, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    # getter for: Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/ResetSettings;->access$200(Lcom/android/settings/ResetSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v0, v0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0919ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v0, v0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/ResetSettings$3$2;->this$1:Lcom/android/settings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/settings/ResetSettings$3;->this$0:Lcom/android/settings/ResetSettings;

    iget-object v0, v0, Lcom/android/settings/ResetSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
