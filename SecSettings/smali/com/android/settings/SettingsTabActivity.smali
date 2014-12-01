.class public Lcom/android/settings/SettingsTabActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter;,
        Lcom/android/settings/SettingsTabActivity$SettingsTabListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mDirectSettingEnabler:Z

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field filter:Landroid/content/IntentFilter;

.field mAccountTabView:Landroid/view/View;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field mConnectionTabView:Landroid/view/View;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field private mDualFoldertype:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderIndexMap2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListeningToAccountUpdates:Z

.field mMoreTabView:Landroid/view/View;

.field private mOpenSearchHierarchy:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mTetheredData:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    sput-boolean v2, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->filter:Landroid/content/IntentFilter;

    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->MHS_REQUEST:I

    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mTetheredData:I

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    new-instance v0, Lcom/android/settings/SettingsTabActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$3;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/SettingsTabActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsTabActivity$4;-><init>(Lcom/android/settings/SettingsTabActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b074b
        0x7f0b074d
        0x7f0b074c
        0x7f0b074f
        0x7f0b0755
        0x7f0b075c
        0x7f0b07cb
        0x7f0b076e
        0x7f0b076b
        0x7f0b079c
        0x7f0b073c
        0x7f0b079a
        0x7f0b07d0
        0x7f0b0756
        0x7f0b079d
        0x7f0b077d
        0x7f0b078e
        0x7f0b0733
        0x7f0b0734
        0x7f0b07a4
        0x7f0b0798
        0x7f0b07a1
        0x7f0b0779
        0x7f0b0769
    .end array-data
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    sget-wide v0, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0

    sput p0, Lcom/android/settings/SettingsTabActivity;->mWifiSummaryId:I

    return p0
.end method

.method public static callSearchMenu()V
    .locals 4

    const v3, 0x10008000

    sget-object v0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/search/SearchMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.settingssearch.SettingsSearchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    const v12, 0x7f090b42

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v5

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_8

    aget-object v8, v5, v4

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v9, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    array-length v0, v9

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    sget-object v10, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/settings/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v11, v10}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_4

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    :cond_4
    if-eqz v0, :cond_7

    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account_type"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    :goto_4
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    iput-object v3, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/android/settings/SettingsTabActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsTabActivity$2;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_5

    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    :cond_a
    return p2

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private needsDockSettings()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSORY"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/high16 v12, 0x10200000

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_64

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    const v1, 0x7f0b076a

    if-ne v6, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "shopdemo"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_67

    move v1, v3

    :goto_1
    const-string v8, "SettingsTabActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v7, v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_65

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_65

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v7, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b0732

    cmp-long v1, v7, v9

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mHeaderIndexMap2:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3
    move v2, v0

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0b0732

    if-ne v6, v1, :cond_5

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const v1, 0x7f0b0778

    if-ne v6, v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->needsDockSettings()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const v1, 0x7f0b07c8

    if-eq v6, v1, :cond_7

    const v1, 0x7f0b07cf

    if-ne v6, v1, :cond_8

    :cond_7
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_2

    :cond_8
    const v1, 0x7f0b074d

    if-ne v6, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f0b074c

    if-ne v6, v1, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.oem.smartwifisupport"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    const-string v7, "SettingsTabActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check to see if target device support VOWIFI: + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    const v1, 0x7f0b074e

    if-ne v6, v1, :cond_d

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    const v1, 0x7f0b074f

    if-ne v6, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    const v1, 0x7f0b0755

    if-ne v6, v1, :cond_f

    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :cond_f
    const v1, 0x7f0b0759

    if-ne v6, v1, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_10
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_11
    const v1, 0x7f0b075a

    if-ne v6, v1, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_12
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_13
    const v1, 0x7f0b075b

    if-ne v6, v1, :cond_14

    const-string v1, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_14
    const v1, 0x7f0b077f

    if-ne v6, v1, :cond_16

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_15
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_16
    const v1, 0x7f0b0780

    if-ne v6, v1, :cond_19

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_18
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings.motion2013.MotionSettings"

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    const v1, 0x7f0b0782

    if-ne v6, v1, :cond_1b

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1a
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1b
    const v1, 0x7f0b0783

    if-ne v6, v1, :cond_1d

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_1c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1d
    const v1, 0x7f0b0781

    if-eq v6, v1, :cond_1

    const v1, 0x7f0b076d

    if-ne v6, v1, :cond_1f

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1e
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1f
    const v1, 0x7f0b0792

    if-ne v6, v1, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "teasymode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_20
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_21
    const v1, 0x7f0b0793

    if-ne v6, v1, :cond_23

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "teasymode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_22
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_23
    const v1, 0x7f0b076f

    if-ne v6, v1, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_24
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "teasymode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_25
    const v1, 0x7f0b0777

    if-ne v6, v1, :cond_26

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_26
    const v1, 0x7f0b079b

    if-ne v6, v1, :cond_27

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_27
    const v1, 0x7f0b0730

    if-ne v6, v1, :cond_28

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_28
    const v1, 0x7f0b0733

    if-ne v6, v1, :cond_29

    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/SettingsTabActivity;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    goto/16 :goto_2

    :cond_29
    const v1, 0x7f0b0785

    if-ne v6, v1, :cond_2a

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2a
    const v1, 0x7f0b077c

    if-eq v6, v1, :cond_1

    const v1, 0x7f0b078e

    if-ne v6, v1, :cond_2c

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_66

    move v1, v3

    :goto_4
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_2b

    if-nez v1, :cond_1

    :cond_2b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2c
    const v1, 0x7f0b0736

    if-ne v6, v1, :cond_2e

    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2d
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sec.android.cloudagent"

    const/4 v8, 0x5

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2e
    const v1, 0x7f0b079e

    if-ne v6, v1, :cond_2f

    if-nez v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2f
    const v1, 0x7f0b07a0

    if-ne v6, v1, :cond_32

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    const-string v7, "SPR"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    const-string v7, "BST"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_30
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_MultipleSWUpdate"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "SettingsTabActivity"

    const-string v7, "Samsung FOTA devices"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.settings.SoftwareUpdateSettings"

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    :cond_31
    const-string v1, "SettingsTabActivity"

    const-string v7, "Samsung non-FOTA devices"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_32
    const v1, 0x7f0b07a2

    if-ne v6, v1, :cond_34

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "VZW"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_33
    const-string v1, "SettingsTabActivity"

    const-string v7, "Verizon OMADM devices"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.OMADM.UPDATE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    :cond_34
    const v1, 0x7f0b079f

    if-ne v6, v1, :cond_35

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v1, v4

    :goto_5
    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move v1, v3

    goto :goto_5

    :cond_35
    const v1, 0x7f0b0771

    if-eq v6, v1, :cond_1

    const v1, 0x7f0b0772

    if-ne v6, v1, :cond_38

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_36
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090c83

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    :cond_37
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090c82

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    :cond_38
    const v1, 0x7f0b0770

    if-ne v6, v1, :cond_39

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_39
    const v1, 0x7f0b0740

    if-ne v6, v1, :cond_3a

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3a
    const v1, 0x7f0b0775

    if-ne v6, v1, :cond_3b

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3b
    const v1, 0x7f0b0799

    if-eq v6, v1, :cond_1

    const v1, 0x7f0b075e

    if-ne v6, v1, :cond_3e

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_3c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3d
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.android.settings.nfcsummary"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    const-string v1, "CSCAppRes"

    const-string v7, "No data for CSCAppResourceUri"

    invoke-static {v1, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3e
    const v1, 0x7f0b0760

    if-ne v6, v1, :cond_41

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3f
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_40
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_41
    const v1, 0x7f0b0763

    if-ne v6, v1, :cond_42

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_42
    const v1, 0x7f0b0764

    if-eq v6, v1, :cond_1

    const v1, 0x7f0b073a

    if-ne v6, v1, :cond_45

    const-string v1, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isDocomoSettingsDisabled()Z

    move-result v1

    if-eqz v1, :cond_44

    :cond_43
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_44
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.nttdocomo.android.docomoset"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_45
    const v1, 0x7f0b0751

    if-ne v6, v1, :cond_46

    const-string v1, "VZW"

    sget-object v7, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_46
    const v1, 0x7f0b0752

    if-ne v6, v1, :cond_47

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_47
    const v1, 0x7f0b0753

    if-ne v6, v1, :cond_48

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_48
    const v1, 0x7f0b0750

    if-ne v6, v1, :cond_49

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_49
    const v1, 0x7f0b073b

    if-ne v6, v1, :cond_4a

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4a
    const v1, 0x7f0b07c5

    if-ne v6, v1, :cond_4b

    sget-object v1, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4b
    const v1, 0x7f0b0769

    if-ne v6, v1, :cond_4c

    const-string v1, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4c
    const v1, 0x7f0b0776

    if-ne v6, v1, :cond_4d

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4d
    const v1, 0x7f0b0758

    if-ne v6, v1, :cond_4e

    invoke-static {v11}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4e
    const v1, 0x7f0b0774

    if-ne v6, v1, :cond_4f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4f
    const v1, 0x7f0b0773

    if-ne v6, v1, :cond_50

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_50
    const v1, 0x7f0b0784

    if-ne v6, v1, :cond_52

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsTabActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-direct {p0}, Lcom/android/settings/SettingsTabActivity;->isVoiceControlEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_51
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_52
    const v1, 0x7f0b07cd

    if-ne v6, v1, :cond_54

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_53
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_54
    const v1, 0x7f0b0761

    if-ne v6, v1, :cond_55

    const-string v1, "ALL"

    const-string v7, "ALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_55
    const v1, 0x7f0b073d

    if-ne v6, v1, :cond_57

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    const-string v7, "ChinaNalSecurity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_56
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_57
    const v1, 0x7f0b075f

    if-ne v6, v1, :cond_59

    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sequent.controlpanel"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_58

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v4, :cond_58

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    :cond_58
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_59
    const v1, 0x7f0b077e

    if-ne v6, v1, :cond_5a

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5a
    const v1, 0x7f0b077a

    if-ne v6, v1, :cond_5c

    :try_start_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.skyfire.browser.toolbar.att"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v4, :cond_5b

    if-eqz v1, :cond_5b

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_1

    :cond_5b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v1, "SettingsTabActivity"

    const-string v7, "Browser Bar is not found"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5c
    const v1, 0x7f0b076c

    if-ne v6, v1, :cond_5e

    const-string v1, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-nez v1, :cond_1

    :cond_5d
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5e
    const v1, 0x7f0b0756

    if-ne v6, v1, :cond_5f

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_5f
    const v1, 0x7f0b0766

    if-ne v6, v1, :cond_60

    :try_start_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v7, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v9, 0x7f0b075d

    cmp-long v1, v7, v9

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_60
    const v1, 0x7f0b075d

    if-ne v6, v1, :cond_63

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_61
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v7, "android.hardware.nfc"

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_62
    const-string v1, "ALL"

    const-string v7, "ALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_63
    const v1, 0x7f0b0016

    if-ne v6, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_64
    return-void

    :cond_65
    move v0, v2

    goto/16 :goto_3

    :cond_66
    move v1, v4

    goto/16 :goto_4

    :cond_67
    move v1, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v2, 0x1610

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x160f

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    const-string v0, "SettingsTapActivity"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsTabActivity;->setResult(I)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7f070034

    const/16 v10, 0x160f

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity;->updateHeaderList(Ljava/util/List;)V

    iget-boolean v4, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v6, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    sget-object v4, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0740

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    :goto_2
    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    :cond_1
    :goto_3
    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p0, v5, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    :pswitch_1
    const v4, 0x7f07003b

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    :pswitch_2
    const v4, 0x7f07000c

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    :pswitch_3
    const v4, 0x7f07007e

    invoke-virtual {p0, v4, p1}, Lcom/android/settings/SettingsTabActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    sget-wide v4, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0775

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    :goto_4
    const-string v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v4, v0, v8, v8}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.sec.android.app.safetyassurance"

    const-string v5, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_depth_counter_key"

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v10}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v8, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    sget v4, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsTabActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    const-class v0, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/ReadingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "settings:remove_ui_options"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const-string v0, "settings:guide_is_on"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const/4 v0, 0x0

    if-eqz v2, :cond_6

    const-string v0, "wifi"

    :cond_4
    :goto_0
    const-string v2, "settings:guide_mode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v1

    :cond_6
    if-nez v3, :cond_7

    const-class v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v3, 0x7f0b003f

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v2, -0x3

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v11, 0x7f0b003e

    const v10, 0x7f04000d

    const/4 v6, 0x0

    const v9, 0x7f0b003f

    const/4 v8, 0x0

    sput-object p0, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;

    sget-object v5, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    new-instance v5, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v5}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v5, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    const-string v5, "development"

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsTabActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v5, -0x3

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f02039f

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090e05

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f0203a0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090e06

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f02039d

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f090626

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f0203a5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0903a8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    new-instance v7, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    sget-object v5, Lcom/android/settings/SettingsTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_from_search"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z

    iput-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    const-string v5, "extra_header_id"

    const-wide/16 v7, -0x1

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J

    const-string v5, "extra_setting_value"

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    const-string v5, "extra_second_fragment_bundle_key"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    const-string v5, "SettingsSearch"

    iget-object v7, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v8, "extra_parent_preference_key"

    const-string v9, "None"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v5, "extra_depth_counter_key"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    iget v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    const-string v5, "extra_tab_id"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    sget v5, Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/SettingsTabActivity;->mDualFoldertype:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_2
    return-void

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJOnlySearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090629

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02025b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settings/SettingsTabActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->finish()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->setEnablerForGuide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->callSearchMenu()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v1, Lcom/android/settings/SettingsTabActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsTabActivity$1;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->invalidateHeaders()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_active_app_list"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/SettingsTabActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V

    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setSearchHierarchyOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsTapActivity , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsTabActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/SettingsTabActivity;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity;->mOpenSearchHierarchy:Z

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method
