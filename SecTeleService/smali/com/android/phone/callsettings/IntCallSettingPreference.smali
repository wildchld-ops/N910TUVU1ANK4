.class public Lcom/android/phone/callsettings/IntCallSettingPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IntCallSettingPreference.java"


# instance fields
.field private fromSettingSearch:Z

.field private mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

.field private mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

.field private mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "IntCallSetting"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f060029

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IntCallSettingPreference;->addPreferencesFromResource(I)V

    const-string v1, "intcallsetting_outgoing"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    const-string v1, "intcallsetting_incoming"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    const-string v1, "intcallsetting_voice_noti"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "outging_intcall_lock"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "incoming_intcall_lock"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0903ac

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f090025

    new-instance v5, Lcom/android/phone/callsettings/IntCallSettingPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/IntCallSettingPreference$1;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intcall_voice_noti"

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v5, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "outging_intcall_lock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "incoming_intcall_lock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "intcall_voice_noti"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenu:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mSettingValue:I

    if-eq v3, v7, :cond_4

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v6, "intcallsetting_outgoing"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    sget-boolean v6, Lcom/android/phone/callsettings/IntCallSettingPreference;->mCheckValue:Z

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenu:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mSettingValue:I

    if-eq v3, v7, :cond_6

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v6, "intcallsetting_incoming"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    sget-boolean v6, Lcom/android/phone/callsettings/IntCallSettingPreference;->mCheckValue:Z

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenu:Z

    if-eqz v3, :cond_8

    sget v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mSettingValue:I

    if-eq v3, v7, :cond_8

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v6, "intcallsetting_voice_noti"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    sget-boolean v6, Lcom/android/phone/callsettings/IntCallSettingPreference;->mCheckValue:Z

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    :cond_2
    :goto_2
    const-string v3, "IntCallSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromSettingSearch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is called by SettingSearch"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/IntCallSettingPreference;->log(Ljava/lang/String;Z)V

    sput-boolean v5, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->fromSettingSearch:Z

    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "intcallsetting_outgoing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/callsettings/IntCallSettingPreference;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/CheckBoxPreference;

    if-lez v1, :cond_5

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_7

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move v3, v5

    goto :goto_5

    :cond_8
    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    if-lez v2, :cond_9

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_9
    move v3, v5

    goto :goto_6

    :cond_a
    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "intcallsetting_incoming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/callsettings/IntCallSettingPreference;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/android/phone/callsettings/IntCallSettingPreference;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v4, "intcallsetting_voice_noti"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/callsettings/IntCallSettingPreference;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_3
.end method
