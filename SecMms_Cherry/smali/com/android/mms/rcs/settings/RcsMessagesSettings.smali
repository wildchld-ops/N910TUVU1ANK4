.class public Lcom/android/mms/rcs/settings/RcsMessagesSettings;
.super Landroid/preference/PreferenceActivity;
.source "RcsMessagesSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# static fields
.field private static final COMPLETED:I = 0x64

.field public static final IMAGE_SIZE_Large:I = 0x1

.field public static final IMAGE_SIZE_Medium:I = 0x2

.field public static final IMAGE_SIZE_Original:I = 0x0

.field public static final IMAGE_SIZE_Small:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Mms/RcsMesssageSettings"

.field public static final mChangeSwitchState:Landroid/os/Handler;

.field public static mRcsPref:Landroid/preference/CheckBoxPreference;

.field public static mRcsState:Lcom/android/mms/rcs/RcsState;

.field public static mSwitch:Landroid/widget/Switch;


# instance fields
.field mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

.field mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

.field mContext:Landroid/content/Context;

.field public mFeatures:Lcom/android/mms/rcs/Features;

.field private mImageSize:Lcom/android/mms/rcs/settings/ImageSizePreference;

.field private mPrefs:Landroid/content/SharedPreferences;

.field public mRcsDefault:Landroid/preference/ListPreference;

.field public mRcsPermanentPref:Landroid/preference/Preference;

.field public mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

.field private mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskGetRcsEnabledState:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings$5;

    invoke-direct {v0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$5;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mChangeSwitchState:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getRcsEnabledImageSizeAsk(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_Imagesize_do_not_show_again"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSelectedImageSizeIndexByPref(Landroid/content/Context;)I
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_rcs_ft_show_image_size_dialog"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    const-string v3, "Mms/RcsMesssageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSelectedFontSizeIndex() returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public static setRcsEnabledImageSizeAsk(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_Imagesize_do_not_show_again"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setupUIAutoAccept()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInHome(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "Mms/RcsMesssageSettings"

    const-string v3, "setupUIAutoAccept: FT auto accept(in home: %s, in roaming: %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;

    invoke-direct {v3, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$2;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/mms/rcs/settings/RcsMessagesSettings$3;

    invoke-direct {v3, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$3;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f060018

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setIPMEServicePreferences(Z)V

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setRcsServicePreferences()V

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setRcsDefaultMethodPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setFtAutoAcception()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setIPMEServicePreferences(Z)V

    goto :goto_0
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

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    sput-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$4;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
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

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mSwitch:Landroid/widget/Switch;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

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

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/rcs/GetRcsEnabledStateTask;

    new-instance v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings$1;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings$1;-><init>(Lcom/android/mms/rcs/settings/RcsMessagesSettings;)V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/GetRcsEnabledStateTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/GetRcsEnabledStateTask$IGetRcsEnabledStateCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mImageSize:Lcom/android/mms/rcs/settings/ImageSizePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mImageSize:Lcom/android/mms/rcs/settings/ImageSizePreference;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mImageSize:Lcom/android/mms/rcs/settings/ImageSizePreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/settings/ImageSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected setFtAutoAcception()V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "pref_key_rcs_ft_auto_acceptation_home"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    const-string v1, "pref_key_rcs_ft_auto_acceptation_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-direct {p0}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->setupUIAutoAccept()V

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAccept(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "pref_key_rcs_setting"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInHome:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mAutoAcceptationInRoaming:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    return-void
.end method

.method protected setIPMEServicePreferences(Z)V
    .locals 2

    const-string v0, "pref_key_rcs_ft_show_image_size_dialog"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/mms/rcs/settings/ImageSizePreference;

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mImageSize:Lcom/android/mms/rcs/settings/ImageSizePreference;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_service"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_default_messaging_method"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_enable_alias"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_alias_text"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_ft_auto_acceptation_home"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_ft_auto_acceptation_roaming"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_display_status"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v0, "TMO"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_show_typing"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_ft_show_image_size_dialog"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_display_status"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_auto_download_file_transfer"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_roaming_auto_download"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_key_rcs_show_typing"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method protected setRcsDefaultMethodPreferences()V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_default_messaing_method_displayed"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_default_messaing_method_displayed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isStoreAndForward()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_default_messaging_method"

    const-string v3, "Chat message"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    const-string v2, "pref_key_default_messaging_method"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected setRcsServicePreferences()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "pref_key_rcs_service"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    sput-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsPref:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/mms/rcs/RcsState;

    invoke-direct {v1}, Lcom/android/mms/rcs/RcsState;-><init>()V

    sput-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsState;->setStateNotInitialized()V

    new-instance v0, Lcom/android/mms/rcs/Features;

    invoke-direct {v0}, Lcom/android/mms/rcs/Features;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/mms/rcs/Features;->setUseIshSaveFileOption(Z)V

    invoke-virtual {v0, v3}, Lcom/android/mms/rcs/Features;->setUsePermanentOption(Z)V

    invoke-virtual {v0, v2}, Lcom/android/mms/rcs/Features;->setUseTrafficOption(Z)V

    invoke-virtual {v0, v3}, Lcom/android/mms/rcs/Features;->setUseTimestampOption(Z)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mFeatures:Lcom/android/mms/rcs/Features;

    new-instance v1, Lcom/android/mms/rcs/settings/RcsSetting;

    sget-object v2, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsPref:Landroid/preference/CheckBoxPreference;

    sget-object v3, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsState:Lcom/android/mms/rcs/RcsState;

    iget-object v4, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/mms/rcs/settings/RcsSetting;-><init>(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;Lcom/android/mms/rcs/RcsState;Lcom/android/mms/rcs/Features;)V

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsMessagesSettings;->mRcsSetting:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v2, v2, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
