.class public Lcom/android/settings/accessibility/AccessibilitySettingsMobility;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private MobilityCategory:Landroid/preference/PreferenceCategory;

.field private RecognitionCategory:Landroid/preference/PreferenceCategory;

.field private final mAccessControlObserver:Landroid/database/ContentObserver;

.field private final mAirWakeUpObserver:Landroid/database/ContentObserver;

.field private mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialogTitle:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private mSingleTapMode:I

.field private mSingleTapModeDialog:Landroid/app/AlertDialog;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private final mSmartScrollObserver:Landroid/database/ContentObserver;

.field private mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAirWakeUpObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScrollObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    return p1
.end method

.method private broadcastAirWakeupChanged(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "title"

    const v4, 0x7f09097a

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09097c

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09097d

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "mobility_preference_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    const-string v5, "Recognition_preference_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    const-string v5, "assistant_menu_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v5, "select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "old_select_long_press_timeout_preference"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a007a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutDefault:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0079

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v8, v4, v0

    aget-object v9, v2, v0

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "air_wake_up"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "air_motion_wake_up"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "com.samsung.android.app.airwakeupview"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v8, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v5, "smartscreen_scroll"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v5, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->MobilityCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v5, "access_control_key"

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_use"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    const-string v5, "AccessibilitySettings_Mobility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeAllPreferences : ACCESS_CONTROL_USE :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_use"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.android.app.accesscontrol"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->RecognitionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    return-void

    :cond_7
    move v5, v7

    goto/16 :goto_2

    :cond_8
    move v6, v7

    goto :goto_3
.end method

.method private isSinglePopupNeeded()I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_interaction"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_assistant_noti"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapMode:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setTapAndHoldDelaySummary()V
    .locals 4

    const/16 v3, 0x1f4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/settings/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSingleTapModeDialog()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f0401b9

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0b0463

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.app.assistantmenu"

    const-string v8, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09096a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;

    invoke-direct {v8, p0, v2, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/content/Intent;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0901ba

    new-instance v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;

    invoke-direct {v8, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;

    invoke-direct {v7, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateRecognitionPreferences()V

    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "TalkbackOnChagne "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AccessibilitySettings_Mobility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateMobilityPreferences()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->setTapAndHoldDelaySummary()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "assistant_menu"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_motion_wake_up"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateRecognitionPreferences()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AccessibilitySettings_Mobility"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070003

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->initializeAllPreferences()V

    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-ne v3, v2, :cond_1

    :goto_0
    const-string v3, "assistant_menu_preference"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "air_wake_up"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v3, "access_control_key"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "smartscreen_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sput v4, Lcom/android/settings/SettingsPreferenceFragment;->mSettingValue:I

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v2, 0x7f090981

    const/4 v7, 0x1

    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09097f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090980

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090982

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f090974

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090977

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    const v0, 0x7f090976

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090979

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f090975

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f090978

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090983

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d1a

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0912a1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0912ec

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090836

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$23;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$23;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$22;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$22;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$21;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$21;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "long_press_timeout"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOldSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.assistantmenu"

    const-string v5, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "access_control_use"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showSingleTapModeDialog()V

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v2, "AssistantMenu Service Start!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v2, "AssistantMenu Service Stop!!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "air_motion_wake_up"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    :goto_2
    move v3, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "air_motion_wake_up"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastAirWakeupChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "smart_scroll"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const-string v0, "com.sec.SMART_SCROLL_CHANGED"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->broadcastStatusChanged(Ljava/lang/String;Z)V

    move v3, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "smart_scroll"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "assistant_menu"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    :goto_4
    move v3, v1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v2, "Access Control Use : 1"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v2, "Access Control Use : 0"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09096e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "AccessibilitySettings_Mobility"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v8, :cond_0

    sget v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    sget v8, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingValue:I

    if-ne v8, v6, :cond_1

    move v5, v6

    :goto_0
    move-object v2, p2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->handleDisplayAccessControlPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    :goto_1
    return v6

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    const-string v9, "com.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    if-eqz v8, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "extra_from_search"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "extra_fragment_bundle_key"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    iput-boolean v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mOpenDetailMenu:Z

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "extra_from_search"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "extra_fragment_bundle_key"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onResume()V
    .locals 11

    const v10, 0x7f09099d

    const v9, 0x7f09099c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateAllPreferences()V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateExclusiveTalkback()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "long_press_timeout"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "access_control_use"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "access_control_use"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v5

    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAirWakeUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    :goto_2
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_scroll"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "smart_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    :goto_4
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v5, :cond_0

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "assistant_menu"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "access_control_use"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    :goto_7
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_1
    move v0, v6

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_1

    :cond_3
    move v1, v6

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_5
    move v2, v6

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_5

    :cond_7
    move v4, v6

    goto :goto_6

    :cond_8
    move v5, v6

    goto :goto_7
.end method
