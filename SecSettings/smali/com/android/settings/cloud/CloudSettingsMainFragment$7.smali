.class Lcom/android/settings/cloud/CloudSettingsMainFragment$7;
.super Landroid/os/CountDownTimer;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDelayedProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$7;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$7;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const/4 v1, 0x1

    invoke-static {v1, v2, v2}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v1

    # setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$7;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$7;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$7;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
