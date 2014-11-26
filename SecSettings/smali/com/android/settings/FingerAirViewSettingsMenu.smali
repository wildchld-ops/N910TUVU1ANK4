.class public Lcom/android/settings/FingerAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/FingerAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettingsMenu$1;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettingsMenu;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettingsMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/FingerAirViewSettingsMenu;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0    # Landroid/content/ContentResolver;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v8, "finger_air_view_magnifier"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v8, "finger_air_view_information_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v8, "finger_air_view_pregress_bar_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v8, "finger_air_view_speed_dial_tip"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v8, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    :goto_1
    return v6

    :cond_0
    or-int v8, v2, v0

    or-int/2addr v8, v3

    or-int/2addr v8, v5

    or-int v1, v8, v4

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    const v5, 0x7f091173

    const v4, 0x7f090959

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f091174

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090f35

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewSettingsMenu$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettingsMenu$3;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewSettingsMenu$2;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettingsMenu$2;-><init>(Lcom/android/settings/FingerAirViewSettingsMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettingsMenu;->broadcastFingerAirViewChanged(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f07005d

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v8, v0, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_2

    move-object v5, v0

    check-cast v5, Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f004c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v4, v11}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const v13, 0x800015

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    :cond_2
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "magnifier"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "information_preview"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "information_preview_2014"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "sound_and_haptic_feedback"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v8, "progress_bar_preview"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v8, "speed_dial_tip"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f09099c

    :goto_0
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x7f09099c

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "category_additional_feedback"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_e

    const/4 v2, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v8, "ro.product.name"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "tblte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "tr3g"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trlte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trhlte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trelte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "trhplte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "tbhplte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v8, :cond_a

    sget v8, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_master_onoff"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "extra_parent_preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    const/4 v7, 0x1

    :goto_4
    const-string v8, "magnifier"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    return-void

    :cond_b
    const v8, 0x7f09099d

    goto/16 :goto_0

    :cond_c
    const v8, 0x7f09099d

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    :cond_10
    const-string v8, "information_preview"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    const-string v8, "progress_bar_preview"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_12
    const-string v8, "speed_dial_tip"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f091157

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
    .param p1    # Landroid/view/MenuItem;

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

    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0910f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const v4, 0x7f09099d

    const v3, 0x7f09099c

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_magnifier"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_information_preview"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "finger_air_view_full_text"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_pregress_bar_preview"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_speed_dial_tip"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    const v5, 0x7f09099d

    const v4, 0x7f09099c

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirViewModeAllowed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_pregress_bar_preview"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v5

    goto/16 :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_magnifier"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_8
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "finger_air_view_information_preview"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    :goto_9
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_8
    move v1, v5

    goto :goto_8

    :cond_9
    move v4, v5

    goto :goto_9

    :cond_a
    move v2, v3

    goto :goto_7
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
