.class public Lcom/android/settings/DirectPenInputSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# static fields
.field private static mActionBarLayout:Landroid/view/View;


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_INPUT_LANGUAGE:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private actionBarSwitch:Landroid/widget/Switch;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private mActivity:Landroid/app/Activity;

.field private mListView:Landroid/widget/ListView;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const-string v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const-string v0, "pen_writing_buddy_input_language"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    const-string v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    const-string v0, "accessibility_magnifier"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    const-string v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    const-string v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/settings/DirectPenInputSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$3;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settings/DirectPenInputSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$4;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$5;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/DirectPenInputSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$8;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/DirectPenInputSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DirectPenInputSettings$9;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/DirectPenInputSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/DirectPenInputSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->isTalkbackAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method private isTalkbackAvailable()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setPreferenceEnabled()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "input_language"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    const-string v3, "predictive_text"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private startTryIt()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "writing_buddy_tutorial_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private startWritingBuddyService()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.writingbuddyservice"

    const-string v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DirectPenInputSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isTalkBackEnabled()Z
    .locals 7

    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v5, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object v0, v4

    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f070044

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v2, 0x7f0b00e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$2;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->tryItView:Landroid/view/View;

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$1;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    const v10, 0x7f070043

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v9, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_input_method"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "JPN"

    const-string v11, "USA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    const-string v10, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v10, "settings_more_information"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "tablet"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :goto_2
    new-instance v10, Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f004c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v7, v13}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v10, v9}, Landroid/widget/Switch;->setChecked(Z)V

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const v14, 0x800015

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v10

    sput-object v10, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->onWritingBuddyChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    const-string v10, "predictive_text"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v10

    if-eq v10, v8, :cond_3

    invoke-virtual {v1, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v10, p0, Lcom/android/settings/DirectPenInputSettings;->onPredictionClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    return-void

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v10, "input_language"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v10, "settings_more_information"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

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
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "helphub:section"

    const-string v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v5, "writingbuddymanagerservice"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->startWritingBuddyService()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eq v5, v2, :cond_1

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V

    const-string v5, "input_language"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->URI_INPUT_LANGUAGE:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DirectPenInputSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Z)V
    .locals 5

    const v4, 0x7f090f66

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090f6a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090f67

    new-instance v3, Lcom/android/settings/DirectPenInputSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/DirectPenInputSettings$7;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DirectPenInputSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DirectPenInputSettings$6;-><init>(Lcom/android/settings/DirectPenInputSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public turnOffTalkBack()Z
    .locals 9

    const/4 v6, 0x0

    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    iget-char v7, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-char v6, p0, Lcom/android/settings/DirectPenInputSettings;->enabledServicesSeparator:C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v6, 0x1

    goto :goto_0
.end method
