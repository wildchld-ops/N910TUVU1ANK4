.class public Lcom/android/settings/ApplicationsSettingsVZW;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApplicationsSettingsVZW.java"


# instance fields
.field private mCalendar:Landroid/preference/PreferenceScreen;

.field private mContacts:Landroid/preference/PreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mEmail:Landroid/preference/PreferenceScreen;

.field private mGallery:Landroid/preference/PreferenceScreen;

.field private mInternet:Landroid/preference/PreferenceScreen;

.field mIsOwner:Z

.field private mMessages:Landroid/preference/PreferenceScreen;

.field private mSvoice:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    const v4, 0x7f070020

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    const-string v4, "browser_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.sec.android.app.sbrowser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mInternet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v4, "svoice_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    const-string v0, "com.vlingo.midas.gui.ConversationActivity"

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v0, "com.vlingo.midas.settings.SettingsScreen"

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_f

    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_0
    const-string v4, "contact_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.preference.ContactsPreferenceActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v4, "message_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    const-string v5, "com.android.mms.settings.EntrancePrefActivity"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mMessages:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_b

    :cond_a
    const-string v4, "call_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_b
    const-string v4, "calendar_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mCalendar:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string v4, "email_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_d

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mEmail:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v4, "gallery_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mIsOwner:Z

    if-nez v4, :cond_e

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mGallery:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void

    :cond_f
    iget-object v4, p0, Lcom/android/settings/ApplicationsSettingsVZW;->mSvoice:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
