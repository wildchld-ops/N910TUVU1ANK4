.class public Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mFaceScrollObserver:Landroid/database/ContentObserver;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mRadioScrollMode0:Lcom/android/settings/RadioPreference;

.field private mRadioScrollMode1:Lcom/android/settings/RadioPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmartScrollAcceleration:Landroid/preference/Preference;

.field private mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

.field private mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollObserver:Landroid/database/ContentObserver;

.field private mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollSensitivity:Landroid/preference/Preference;

.field private mSmartScrollType:Landroid/preference/Preference;

.field private mSmartScrollUnit:Landroid/preference/Preference;

.field private mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

.field private mSmartScrollWeb:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$1;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$2;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;I)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings/RadioPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings/RadioPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;II)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->showAllOptionDisabledDialog(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0912ef

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0912a1

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090836

    new-instance v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$5;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$4;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAllOptionDisabledDialog(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$8;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSmartScrollMode(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RadioPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/RadioPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/RadioPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_web"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_chrome"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_email_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "smart_scroll_adv_gmail_body"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    or-int v6, v3, v1

    if-ge v6, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll"

    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_smart_scroll_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->showGuideDialogForScroll()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SmartScrollAdvancedSettings"

    const-string v3, "Insert Log"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "ACSS"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v2, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/16 v4, 0x10

    const/4 v6, -0x2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0700e7

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->addPreferencesFromResource(I)V

    const-string v2, "radio_scroll_mode_0"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RadioPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    const-string v2, "radio_scroll_mode_1"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RadioPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "smart_scroll_type"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    const-string v2, "smart_scroll_sensitivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    const-string v2, "smart_scroll_unit"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    const-string v2, "smart_scroll_acceleration"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    const-string v2, "smart_scroll_visual_feedback_icon"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_web"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_email_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_email_body"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_readers_hub"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_chrome"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    const-string v2, "smart_scroll_adv_gmail_body"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    const-string v2, "smartscreen_advanced_setting_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAdvCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0912b8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "face_smart_scroll"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "radio_scroll_mode_0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SmartScrollAdvancedSettings"

    const-string v5, "onPreferenceChange : radio_scroll_mode_0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "face_smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    :goto_0
    return v2

    :cond_0
    const-string v4, "radio_scroll_mode_1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "face_smart_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1    # Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.SETTING_SCROLL_SENSITIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "SmartScrollAdvancedSettings"

    const-string v3, "Cannot find intent : com.android.settings.accessibility.smartscroll.app.sbrowsertry.SETTING_SCROLL_SENSITIVITY"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmartScrollAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget v5, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    move v0, v3

    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_web"

    if-eqz v2, :cond_4

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_email_list"

    if-eqz v2, :cond_6

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_email_body"

    if-eqz v2, :cond_8

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v3, v4

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_readers_hub"

    if-eqz v2, :cond_a

    :goto_5
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_d

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_chrome"

    if-eqz v2, :cond_c

    :goto_6
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_c
    move v3, v4

    goto :goto_6

    :cond_d
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_adv_gmail_body"

    if-eqz v2, :cond_e

    :goto_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    move v3, v4

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_scroll_visual_feedback_icon"

    if-eqz v2, :cond_10

    :goto_8
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    move v3, v4

    goto :goto_8
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v2, "SmartScrollAdvancedSettings"

    const-string v5, "onResume()"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "face_smart_scroll"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "face_smart_scroll"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->updateSmartScrollMode(I)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_visual_feedback_icon"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_web"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_email_list"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_email_body"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_readers_hub"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_chrome"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "smart_scroll_adv_gmail_body"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v3

    :goto_7
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings/RadioPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/RadioPreference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_1
    move v2, v4

    goto/16 :goto_0

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_2

    :cond_4
    move v2, v4

    goto/16 :goto_3

    :cond_5
    move v2, v4

    goto/16 :goto_4

    :cond_6
    move v2, v4

    goto/16 :goto_5

    :cond_7
    move v2, v4

    goto :goto_6

    :cond_8
    move v0, v4

    goto :goto_7
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mFaceScrollObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public showGuideDialogForScroll()V
    .locals 15

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v13, 0x7f04023b

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v13, 0x7f0b057c

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0912c7

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v13, 0x7f0912c8

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912c9

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912ca

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v13, 0x7f0912cb

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912cc

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f0b057d

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/HelpItem;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    const v13, 0x7f0912d7

    invoke-virtual {v3, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    const v13, 0x7f0912cd

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    const v13, 0x7f02067d

    invoke-virtual {v3, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v12, Lcom/android/settings/HelpItem;

    invoke-direct {v12, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    const v13, 0x7f0912d6

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    const v13, 0x7f0912ce

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    const v13, 0x7f02067c

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v13, 0x7f0b057e

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0912cf

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912d0

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912d1

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "com.sec.feature.multiwindow"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912d3

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x7f0b057f

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v13, 0x7f0912a1

    invoke-virtual {v1, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v13, 0x104000a

    new-instance v14, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$6;

    invoke-direct {v14, p0, v2, v10}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$6;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    iput-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    iget-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    iget-object v13, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v14, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;

    invoke-direct {v14, p0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$7;-><init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f0912d2

    invoke-virtual {p0, v14}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method
