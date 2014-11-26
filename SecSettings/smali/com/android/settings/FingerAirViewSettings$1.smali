.class Lcom/android/settings/FingerAirViewSettings$1;
.super Landroid/database/ContentObserver;
.source "FingerAirViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FingerAirViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings$1;->this$0:Lcom/android/settings/FingerAirViewSettings;

    # getter for: Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewSettings;->access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
