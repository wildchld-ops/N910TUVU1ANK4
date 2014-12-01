.class Lcom/android/settings/SettingsEmergencySettings$1;
.super Landroid/database/ContentObserver;
.source "SettingsEmergencySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsEmergencySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsEmergencySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsEmergencySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencySettings;->access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mMobilePreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencySettings;->access$000(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencySettings;->access$100(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    # getter for: Lcom/android/settings/SettingsEmergencySettings;->mTempPreference:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SettingsEmergencySettings;->access$100(Lcom/android/settings/SettingsEmergencySettings;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/SettingsEmergencySettings$1;->this$0:Lcom/android/settings/SettingsEmergencySettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
