.class Lcom/android/settings/MultiWindowSettings$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MultiWindowSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "MultiWindowSettings"

    const-string v2, "onChange() MULTI_WINDOW_SWITCH_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    # getter for: Lcom/android/settings/MultiWindowSettings;->mOpenMultiWindowVIew:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MultiWindowSettings;->access$000(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    # getter for: Lcom/android/settings/MultiWindowSettings;->mPopupViewShortcut:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/MultiWindowSettings;->access$100(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    # getter for: Lcom/android/settings/MultiWindowSettings;->mTrayPosition:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/settings/MultiWindowSettings;->access$300(Lcom/android/settings/MultiWindowSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MultiWindowSettings$1;->this$0:Lcom/android/settings/MultiWindowSettings;

    # getter for: Lcom/android/settings/MultiWindowSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/MultiWindowSettings;->access$200(Lcom/android/settings/MultiWindowSettings;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
