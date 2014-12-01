.class public Lcom/diotek/ime/implement/setting/ConnectSetting;
.super Landroid/preference/PreferenceActivity;
.source "ConnectSetting.java"


# instance fields
.field private mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContactsConnectModule:Lcom/diotek/ime/framework/connect/ContactsConnectModule;

.field mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mFacebookConnectModule:Lcom/diotek/ime/framework/connect/FacebookConnectModule;

.field mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field mGmailConnectModule:Lcom/diotek/ime/framework/connect/GmailConnectModule;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field mMessagingConnectModule:Lcom/diotek/ime/framework/connect/MessagingConnectModule;

.field mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

.field private mPhoneType:I

.field mSpellCheckerPreference:Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

.field mTwitterConnectModule:Lcom/diotek/ime/framework/connect/TwitterConnectModule;

.field mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ConnectSetting;->showXt9GuideDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/ConnectSetting;)Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/setting/ConnectSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/ConnectSetting;->showLiveLanguageGuideDialog()V

    return-void
.end method

.method private showLiveLanguageGuideDialog()V
    .locals 8

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030044

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0214

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const/high16 v7, 0x7f0f0000

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f08005b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v6, 0x104000a

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$5;

    invoke-direct {v7, p0, v1}, Lcom/diotek/ime/implement/setting/ConnectSetting$5;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e01d1

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$6;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$6;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showXt9GuideDialog()V
    .locals 8

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030050

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01e8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const/high16 v7, 0x7f0f0000

    invoke-direct {v6, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f080073

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v6, 0x104000a

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$3;

    invoke-direct {v7, p0, v1}, Lcom/diotek/ime/implement/setting/ConnectSetting$3;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e01d1

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$4;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$4;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v7, :cond_9

    const v7, 0x7f03005b

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string v7, "connect_gmail_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v7, "connect_facebook_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v7, "connect_twitter_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v7, "connect_messaging_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v7, "connect_contacts_enable"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    const-string v7, "settings_use_spell_checker"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mSpellCheckerPreference:Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v7, "settings_use_spell_checker"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/spellcheckservice/SpellCheckerPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    iput v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    iget v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mPhoneType:I

    if-eqz v7, :cond_a

    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mIsPersonalizedDataDefaultOff:Z

    if-nez v7, :cond_3

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string v7, "support_dlm"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$1;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$1;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    const-string v7, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v7, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    new-instance v7, Lcom/diotek/ime/implement/setting/ConnectSetting$2;

    invoke-direct {v7, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$2;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    const-string v7, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_8

    const-string v7, "support_dlm"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    const v7, 0x7f03005a

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mGMailPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mFacebookPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mTwitterPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mMessagingPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mContactsPreference:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->destroy()V

    :cond_4
    return-void
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

.method public showTOS()V
    .locals 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f030051

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f080074

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ConnectSetting;->mACDownloadManager:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->getTOSText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0e01d1

    const v3, 0x7f0e0116

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/diotek/ime/implement/setting/ConnectSetting$7;

    invoke-direct {v6, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$7;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/diotek/ime/implement/setting/ConnectSetting$8;

    invoke-direct {v6, p0}, Lcom/diotek/ime/implement/setting/ConnectSetting$8;-><init>(Lcom/diotek/ime/implement/setting/ConnectSetting;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
