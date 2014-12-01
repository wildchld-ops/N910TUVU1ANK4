.class Lcom/android/settings/FingerAirViewSettingsMenu$3;
.super Ljava/lang/Object;
.source "FingerAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewSettingsMenu;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewSettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$000(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$000(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # invokes: Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$200(Lcom/android/settings/FingerAirViewSettingsMenu;Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$300(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$400(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu$3;->this$0:Lcom/android/settings/FingerAirViewSettingsMenu;

    # getter for: Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->access$500(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
