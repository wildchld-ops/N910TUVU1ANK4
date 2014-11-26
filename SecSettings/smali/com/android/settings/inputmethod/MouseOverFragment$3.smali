.class Lcom/android/settings/inputmethod/MouseOverFragment$3;
.super Ljava/lang/Object;
.source "MouseOverFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/MouseOverFragment;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/MouseOverFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/MouseOverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    # getter for: Lcom/android/settings/inputmethod/MouseOverFragment;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$300(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$400(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    # invokes: Lcom/android/settings/inputmethod/MouseOverFragment;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$500(Lcom/android/settings/inputmethod/MouseOverFragment;Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    # getter for: Lcom/android/settings/inputmethod/MouseOverFragment;->mInforamtionPreviewAndIconLabels:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$100(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/MouseOverFragment$3;->this$0:Lcom/android/settings/inputmethod/MouseOverFragment;

    # getter for: Lcom/android/settings/inputmethod/MouseOverFragment;->mListScrolling:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/inputmethod/MouseOverFragment;->access$200(Lcom/android/settings/inputmethod/MouseOverFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
