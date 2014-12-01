.class public Lcom/android/mms/settings/DeleteoldMessagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeleteoldMessagesSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DeleteoldMessagesSettings"


# instance fields
.field mContext:Landroid/content/Context;

.field mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    new-instance v0, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings$2;-><init>(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    new-instance v0, Lcom/android/mms/settings/DeleteoldMessagesSettings$3;

    invoke-direct {v0, p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings$3;-><init>(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/DeleteoldMessagesSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setElementEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/settings/DeleteoldMessagesSettings;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/settings/DeleteoldMessagesSettings;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setMmsDisplayLimit()V

    return-void
.end method

.method private clearPickerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    :cond_0
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

.method private setElementEnable()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0060

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setPreferenceSummary()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setSmsDisplayLimit()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setMmsDisplayLimit()V

    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0060

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showMmsLimitMessagePickerDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSmsLimitMessagePickerDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setOthersPreferences()V

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setPreferenceSummary()V

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

    iput-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/settings/DeleteoldMessagesSettings$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings$1;-><init>(Lcom/android/mms/settings/DeleteoldMessagesSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    :cond_0
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

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

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

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->showSmsLimitMessagePickerDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->showMmsLimitMessagePickerDialog()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const-string v2, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    const-string v2, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_auto_delete"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setElementEnable()V

    const/4 v2, 0x1

    return v2
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->setPreferenceSummary()V

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAutoDeleteOption(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSwitch:Landroid/widget/Switch;

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

.method protected setOthersPreferences()V
    .locals 2

    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsLimitPref:Landroid/preference/Preference;

    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/DeleteoldMessagesSettings;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/settings/DeleteoldMessagesSettings;->removePreference(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    goto :goto_0
.end method
