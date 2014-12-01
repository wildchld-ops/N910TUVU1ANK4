.class public Lcom/android/mms/settings/SpamSettings;
.super Landroid/preference/PreferenceActivity;
.source "SpamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/SpamSettings"


# instance fields
.field private mAddtoNum:Landroid/preference/Preference;

.field private mAddtoText:Landroid/preference/Preference;

.field private mBlockunkown:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/SpamSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/settings/SpamSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/SpamSettings;->setElementEnable()V

    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setCheckMenu()V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mBlockunkown:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mBlockunkown:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_spam_filter_unknown_enable"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setElementEnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoNum:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoNum:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoText:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoText:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mBlockunkown:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mBlockunkown:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private showSpamReportExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c04d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c04d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/settings/SpamSettings;->setOthersPreferences()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0b03fc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/settings/SpamSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/SpamSettings$1;-><init>(Lcom/android/mms/settings/SpamSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03fc
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "pref_key_spam_num_add"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "pref_key_spam_text_add"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_key_explain_spamreport"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/android/mms/settings/SpamSettings$2;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/SpamSettings$2;-><init>(Lcom/android/mms/settings/SpamSettings;)V

    invoke-direct {p0, v0}, Lcom/android/mms/settings/SpamSettings;->showSpamReportExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_spam_num_add"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoNum:Landroid/preference/Preference;

    const-string v2, "pref_key_spam_text_add"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/SpamSettings;->mAddtoText:Landroid/preference/Preference;

    const-string v2, "pref_key_spam_filter_unknown_enable"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/mms/settings/SpamSettings;->mBlockunkown:Landroid/preference/CheckBoxPreference;

    const-string v2, "pref_key_spam_option_enable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/mms/settings/SpamSettings;->setElementEnable()V

    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/SpamSettings;->setCheckMenu()V

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSpamOption(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method protected setOthersPreferences()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_spam_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/settings/SpamSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_explain_spamreport"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/settings/SpamSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForKor()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_spam_filter_unknown_enable"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/settings/SpamSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_spam_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/settings/SpamSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    goto :goto_0

    :cond_4
    const-string v1, "pref_key_spam_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v1, "pref_key_spam_option"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v1}, Lcom/android/mms/settings/SpamSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    goto :goto_0
.end method
