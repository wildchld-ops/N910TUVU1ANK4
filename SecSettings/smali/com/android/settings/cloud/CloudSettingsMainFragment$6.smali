.class Lcom/android/settings/cloud/CloudSettingsMainFragment$6;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->showCloudChargeEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iput-object p2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->val$layout:Landroid/view/View;

    const v4, 0x7f0b0195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings.cloud.cloudsettingsmainfragment"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$6;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-boolean v3, v3, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsMobileConnected:Z

    if-eqz v3, :cond_1

    const-string v3, "DoNotShowDialogData"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :cond_1
    const-string v3, "DoNotShowDialogWlan"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
