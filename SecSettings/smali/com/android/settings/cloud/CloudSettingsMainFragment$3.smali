.class Lcom/android/settings/cloud/CloudSettingsMainFragment$3;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$400(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v5, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v7, 0x7f091668

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    :cond_0
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v4, v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;->toastMsg:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v8

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.cloud.cloudsettingsmainfragment"

    invoke-virtual {v4, v5, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v4, "DoNotShowDialogData"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "DoNotShowDialogWlan"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "enable"

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "CloudSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNotShowData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doNotShowWlan="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCloudChargeEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->showCloudChargeEnableDialog()V
    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->showCloudChargeEnableDialog()V
    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$900(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V
    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$3;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    # invokes: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudAuthentication()V
    invoke-static {v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$1000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    goto/16 :goto_0
.end method
