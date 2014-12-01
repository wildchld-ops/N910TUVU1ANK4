.class public Lcom/android/settings/FingerAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoMoreDepth:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mIsKMenutree:Z

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iput-boolean v1, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    iput-boolean v1, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    new-instance v0, Lcom/android/settings/FingerAirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettings$1;-><init>(Lcom/android/settings/FingerAirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FingerAirViewSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FingerAirViewSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    return v0
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2

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

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$4;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$3;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/FingerAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewSettings$2;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_show_up_indicator"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_full_text"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pointer"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_pregress_bar_preview"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_speed_dial_tip"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-boolean v10, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    if-eqz v10, :cond_0

    or-int v10, v3, v6

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int v2, v10, v4

    :goto_0
    if-ge v2, v8, :cond_1

    :goto_1
    return v8

    :cond_0
    or-int v10, v3, v6

    or-int/2addr v10, v1

    or-int/2addr v10, v0

    or-int/2addr v10, v4

    or-int/2addr v10, v5

    or-int v2, v10, v7

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

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

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewSettings;->makeTalkBackDisablePopup()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const v8, 0x7f09099d

    const v7, 0x7f09099c

    const/16 v10, 0x10

    const/4 v13, -0x2

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f07005c

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    const-string v6, "setting_guide"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f091143

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "melius"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\n\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0f004c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v12, v12, v3, v12}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const v11, 0x800015

    invoke-direct {v10, v13, v13, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    :cond_2
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "magnifier"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "information_preview"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "sound_and_haptic_feedback"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v6, "progress_bar_preview"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "speed_dial_tip"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v6, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    invoke-static {v6, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    :goto_2
    return-void

    :cond_4
    move v6, v8

    goto :goto_0

    :cond_5
    move v7, v8

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091141

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_magnifier"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_full_text"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    const v9, 0x7f09099d

    const v8, 0x7f09099c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v7, "FingerAirViewSettings"

    const-string v10, "onResume()"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view"

    invoke-static {v7, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    :goto_0
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v5

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v7, p0, Lcom/android/settings/FingerAirViewSettings;->mIsKMenutree:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view_pregress_bar_preview"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v5

    :goto_4
    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "finger_air_view_speed_dial_tip"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    :goto_5
    invoke-virtual {v8, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_6
    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "finger_air_view"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v5, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-eqz v2, :cond_2

    sget v7, Lcom/android/settings/FingerAirViewSettings;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "extra_parent_preference_key"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v7, Lcom/android/settings/FingerAirViewSettings;->mSettingValue:I

    if-ne v7, v5, :cond_c

    move v4, v5

    :goto_7
    const-string v5, "magnifier"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/FingerAirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_2
    :goto_8
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_3
    move v1, v6

    goto/16 :goto_0

    :cond_4
    move v7, v6

    goto/16 :goto_1

    :cond_5
    move v7, v6

    goto/16 :goto_2

    :cond_6
    move v7, v6

    goto/16 :goto_3

    :cond_7
    move v7, v6

    goto :goto_4

    :cond_8
    move v7, v6

    goto :goto_5

    :cond_9
    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_magnifier"

    invoke-static {v7, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_9
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v10, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "finger_air_view_information_preview"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    :goto_a
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_a
    move v7, v9

    goto :goto_9

    :cond_b
    move v8, v9

    goto :goto_a

    :cond_c
    move v4, v6

    goto :goto_7

    :cond_d
    const-string v5, "information_preview"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/FingerAirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const-string v5, "progress_bar_preview"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/FingerAirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    const-string v5, "speed_dial_tip"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/FingerAirViewSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_8
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
