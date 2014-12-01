.class public Lcom/android/settings/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mActionBarLayout:Landroid/view/View;

.field private static mActionBarSwitch:Landroid/widget/Switch;

.field private static mActivity:Landroid/app/Activity;

.field private static mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;


# instance fields
.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private final mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

.field private mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 3

    const-string v0, "key_pen_pointer"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "key_pen_information_preview"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_pen_progress_preview"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_pen_icon_label"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_pen_list_scroll"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v0, "key_pen_information_preview_2014"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    const-string v0, "key_pen_icon_label_2014"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    const-string v0, "key_pen_list_scroll_2014"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    const-string v0, "key_pen_link_preview_2014"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    const-string v0, "key_pen_air_menu_2014"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_category_pen_additional_feedback"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.app.SmartClipService"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "manual"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_LinkifyType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pen_air_view_guide"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f091132

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "pen_hovering_information_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v10, "pen_hovering_progress_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v10, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v10, "pen_hovering_icon_label"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v10, "pen_hovering_list_scroll"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v10, "pen_hovering_sound"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v10, "pen_hovering_link_preview"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v10, "pen_hovering_air_menu"

    invoke-static {p0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v6, 0x0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    or-int v10, v2, v5

    or-int/2addr v10, v7

    or-int/2addr v10, v1

    or-int/2addr v10, v4

    or-int/2addr v10, v6

    or-int/2addr v10, v3

    or-int/2addr v10, v0

    if-ge v10, v8, :cond_2

    :goto_1
    return v8

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1
.end method

.method private showAirViewDialog(Landroid/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09113d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f091109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettingsMenu$4;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updatePenAirViewSettingsMenu()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKUpgradeAirview()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "PenAirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const-string v3, "PenAirViewSettings"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    new-instance v3, Landroid/widget/Switch;

    sget-object v4, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/settings/PenAirViewEnabler;

    sget-object v4, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/PenAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    sput-object v3, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    const v3, 0x7f07009d

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->initializeAllPreferences()V

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_1

    :goto_0
    const-string v3, "key_pen_information_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "key_pen_icon_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const-string v3, "key_pen_pointer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 3

    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

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
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :goto_0
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_pointer"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "air_button_onoff"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v4

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    if-ne v0, v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_progress_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_icon_label"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "PenAirViewSettings"

    const-string v5, "onPreferenceTreeClick() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

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
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_sound"

    iget-object v6, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

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

    const/16 v3, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const-string v1, "PenAirViewSettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Lcom/android/settings/PenAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    :cond_0
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_1
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v1}, Lcom/android/settings/PenAirViewEnabler;->resume()V

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->stop()V

    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 7

    const v4, 0x7f09099d

    const v3, 0x7f09099c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_pointer"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_progress_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pen_hovering_sound"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenInformationPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_7
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenIconLabel2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_icon_label"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenListScroll2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenLinkPreview2014:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_link_preview"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    :goto_a
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPrefPenAirMenu2014:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "pen_hovering_air_menu"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    move v0, v4

    goto :goto_7

    :cond_9
    move v0, v4

    goto :goto_8

    :cond_a
    move v0, v4

    goto :goto_9

    :cond_b
    move v0, v4

    goto :goto_a

    :cond_c
    move v3, v4

    goto :goto_b
.end method
