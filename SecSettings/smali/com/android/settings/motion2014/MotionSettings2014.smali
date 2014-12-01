.class public Lcom/android/settings/motion2014/MotionSettings2014;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirTurnAndScroll:Landroid/preference/Preference;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mMergedMutePause:Landroid/preference/Preference;

.field private mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mQuickAppicationAccess:Landroid/preference/Preference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2014/MotionSettings2014;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private isAllMutePauseOptionDisabled()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    :goto_0
    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v5}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_1
    const/4 v1, 0x0

    or-int v5, v2, v0

    or-int/2addr v5, v1

    if-ge v5, v4, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionSettings2014$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2014/MotionSettings2014$2;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2014/MotionSettings2014$3;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2014/MotionSettings2014$3;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAllOptionDisabledDialog(Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->dismissAllDialog()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090fad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/motion2014/MotionSettings2014$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/motion2014/MotionSettings2014$1;-><init>(Lcom/android/settings/motion2014/MotionSettings2014;Landroid/preference/SwitchPreferenceScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x64

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const v4, 0x7f070087

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v4, "air_turn_and_scroll"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    const-string v4, "merged_mute_or_pause"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    const-string v4, "quick_application_access"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    const-string v4, "pick_up_switch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v4, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v4, "palm_swipe_switch"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "grande"

    const-string v6, "ro.build.scafe.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_0
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v4, "air_turn_and_scroll"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_8
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    const-string v4, "pick_up_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_9
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    const-string v4, "palm_swipe_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-lt v4, v7, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "afyon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_e

    sget v4, Lcom/android/settings/motion2014/MotionSettings2014;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "master_motion"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/android/settings/motion2014/MotionSettings2014;->mSettingValue:I

    if-ne v4, v3, :cond_12

    :goto_1
    const-string v4, "pick_up_switch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_e
    :goto_2
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    const-string v4, "SEC_FLOATING_FEATURE_COMMON_BLACKSCREEN_UI_QUICK_ACCESS"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-lt v4, v7, :cond_5

    :cond_11
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_12
    move v3, v5

    goto :goto_1

    :cond_13
    const-string v4, "pick_up_to_call_out_switch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_14
    const-string v4, "merged_mute_or_pause_switch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    const-string v4, "palm_swipe_switch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/motion2014/MotionSettings2014;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f091461

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020256

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "helphub:section"

    const-string v2, "air_gesture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_pick_up_to_call_out"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->isAllMutePauseOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0, v1}, Lcom/android/settings/motion2014/MotionSettings2014;->showAllOptionDisabledDialog(Landroid/preference/SwitchPreferenceScreen;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/settings/motion2014/MotionSettings2014;->makeTalkBackDisablePopup()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 8

    const v2, 0x7f09099c

    const/4 v4, 0x1

    const v3, 0x7f09099d

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mAirTurnAndScroll:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUp:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOut:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up_to_call_out"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePause:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_merged_mute_pause"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "MotionSettings2014"

    const-string v4, "MDM: Screen Capture Disabled"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_palm_swipe"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mQuickAppicationAccess:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "quick_application_access"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_6
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipe:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_7

    :cond_7
    move v2, v3

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_pick_up"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    :goto_8
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPickUpToCallOutSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    :goto_9
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mMergedMutePauseSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "motion_merged_mute_pause"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    :goto_a
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "MotionSettings2014"

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_9
    move v1, v5

    goto :goto_8

    :cond_a
    move v1, v5

    goto :goto_9

    :cond_b
    move v1, v5

    goto :goto_a

    :cond_c
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mPalmSwipeSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionSettings2014;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    :goto_b
    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_d
    move v4, v5

    goto :goto_b
.end method
