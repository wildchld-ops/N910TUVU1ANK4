.class Lcom/android/settings/wfd/WifiDisplaySettings$18;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z
    invoke-static {v0, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1602(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z
    invoke-static {v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onCheckedChanged() : already WfdConnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-boolean p2, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    const-string v0, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    if-eqz p2, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-boolean v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method
