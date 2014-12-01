.class Lcom/android/settings/MouseHoveringSettings$3;
.super Ljava/lang/Object;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MouseHoveringSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$500(Lcom/android/settings/MouseHoveringSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # invokes: Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/MouseHoveringSettings;->access$600(Lcom/android/settings/MouseHoveringSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$000(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$100(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$200(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$300(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    # getter for: Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$400(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
