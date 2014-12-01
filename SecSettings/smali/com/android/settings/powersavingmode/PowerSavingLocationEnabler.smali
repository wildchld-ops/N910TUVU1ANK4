.class public Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "PowerSavingLocationEnabler.java"


# instance fields
.field private mActive:Z

.field private mCheckPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private final mLocationModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mActive:Z

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public getLocationMode()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->setLocationMode(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setLocationMode(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingLocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    return-void
.end method
