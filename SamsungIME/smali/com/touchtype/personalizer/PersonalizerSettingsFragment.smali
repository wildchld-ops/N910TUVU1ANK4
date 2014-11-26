.class public Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PersonalizerSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;,
        Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final WATCHER_WAIT:J = 0x1f4L


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

.field private mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mIsPersonalizedDataDefaultOff:Z

.field private mIsPredictive:Z

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhoneType:I

.field private mPreferences:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation
.end field

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSPref:Landroid/content/SharedPreferences;

.field private mService:Lcom/touchtype/personalizer/PersonalizerService;

.field private mTimedTask:Ljava/lang/Runnable;

.field private mWatcherHandler:Landroid/os/Handler;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

.field private urlPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iput-boolean v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    iput v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$3;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->urlPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$12;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showLiveLanguageGuideDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showSwiftKeyGuideDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showPrivacyPolicyRestrictionDialog()V

    return-void
.end method

.method static synthetic access$602(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;
    .locals 0
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
    .param p1    # Lcom/touchtype/personalizer/PersonalizerService;

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindToService()V
    .locals 4

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Bind to personalizer service"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 2
    .param p1    # Landroid/preference/PreferenceCategory;
    .param p2    # Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_personalize_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Removed Messaging due to Wifi model"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/PreferenceCategory;
    .param p2    # Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_personalize_weibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Removed Weibo due to configuration setting"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPreferences()Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/touchtype/personalizer/PersonalizerPreference;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    const/4 v10, 0x0

    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v13, :cond_2

    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v13

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_b

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    instance-of v13, v11, Landroid/preference/PreferenceCategory;

    if-eqz v13, :cond_9

    invoke-virtual {v8, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    :goto_3
    if-ltz v3, :cond_8

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    instance-of v13, v12, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_1

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->checkWeibo(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v0

    iget v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    if-nez v13, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_0
    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_3

    sget-object v13, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v14, "getPreferences fail due to inputmethod Context is null"

    invoke-static {v13, v14}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    iput v13, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPhoneType:I

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, v9, v4}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->checkMessaging(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v0, 0x1

    :goto_6
    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_9
    instance-of v13, v11, Lcom/touchtype/personalizer/PersonalizerPreference;

    if-eqz v13, :cond_a

    move-object v4, v11

    check-cast v4, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b
    return-object v6
.end method

.method private setSummary(JII)Ljava/lang/String;
    .locals 10
    .param p1    # J
    .param p3    # I
    .param p4    # I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/4 v6, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :cond_0
    :goto_0
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "%1$s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%s"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    return-object v9

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setup()V
    .locals 4

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showUseWifiToast(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->getPreferences()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iput-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v2, v3}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    return-void
.end method

.method private showLiveLanguageGuideDialog()V
    .locals 9

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030044

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

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

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/high16 v8, 0x7f0f0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$7;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x104000a

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$8;

    invoke-direct {v7, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$8;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e01d1

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;

    invoke-direct {v7, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$9;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$10;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showPrivacyPolicyRestrictionDialog()V
    .locals 8

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const v3, 0x7f030056

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0319

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/high16 v7, 0x7f0f0000

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$11;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$11;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showSwiftKeyGuideDialog()V
    .locals 9

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const v5, 0x7f030050

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

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

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const/high16 v8, 0x7f0f0000

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    new-instance v6, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;

    invoke-direct {v6, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$4;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x104000a

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$5;

    invoke-direct {v7, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$5;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0e01d1

    new-instance v7, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;

    invoke-direct {v7, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$6;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showUseWifiToast(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.touchtype.personalizer.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    const v2, 0x7f0e0229

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private unbindFromService()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unbind from personalizer service"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearUserModel()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerService;->clearLanguageData()Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    const-string v3, "RELOAD_LANGUAGEPACK"

    invoke-interface {v0, v3, v5}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype/personalizer/PersonalizerPreference;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7}, Lcom/touchtype/personalizer/PersonalizerPreference;->setActive(Z)V

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0228

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v5

    const-string v6, "params"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/Personalizer;->startPersonalization(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0221

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v2}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/touchtype/personalizer/PersonalizerService;->setFailed(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020b24

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    iput-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;

    const-string v11, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v10

    iput-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v10

    iput-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "TABLET_MODE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    :cond_0
    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->misTablet:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    const/16 v12, 0x400

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_DisablePersonalizedData"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    if-eqz v10, :cond_b

    const v10, 0x7f05021e

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    :goto_0
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v0, Landroid/widget/Switch;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {v0, v10}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907e7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v11, v7, v12}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v0, v10}, Landroid/widget/Switch;->setChecked(Z)V

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v1, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    const v13, 0x800015

    invoke-direct {v10, v11, v12, v13}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->onPredictiveSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v10}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string v10, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v10, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    const-string v10, "SETTINGS_DEFAULT_USE_EMOJI_SUGGESTIONS"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_3

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    if-eqz v3, :cond_4

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEmojiLMLoaded()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPredictive:Z

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_1
    const-string v10, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_d

    const-string v10, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    new-instance v10, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;

    invoke-direct {v10, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    :goto_2
    iget-boolean v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mIsPersonalizedDataDefaultOff:Z

    if-nez v10, :cond_7

    const-string v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    const-string v10, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_8

    new-instance v10, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$2;

    invoke-direct {v10, p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$2;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_DisableAutoCorrection"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_e

    :cond_9
    :goto_3
    const-string v10, "key_privacy_policy_pref"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->urlPrefClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    return-void

    :cond_b
    const v10, 0x7f05021d

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_d
    const-string v10, "SETTINGS_DEFAULT_USE_LIVE_LANGUAGE"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_e
    const-string v10, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f030080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->showUseWifiToast(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->bindToService()V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setup()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;Lcom/touchtype/personalizer/PersonalizerSettingsFragment$1;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mWatcherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->unbindFromService()V

    return-void
.end method

.method public setPreferenceState()V
    .locals 14

    const v13, 0x7f0e022b

    const-string v11, "SETTINGS_USE_STANDARD_DATA"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mPreferences:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype/personalizer/PersonalizerPreference;

    const/4 v9, 0x0

    const/4 v0, 0x1

    invoke-virtual {v10}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;

    invoke-virtual {v11}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$PersonalizerServiceConnection;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Lcom/touchtype/personalizer/PersonalizerPreference;->getPersonalizer()Lcom/touchtype/personalizer/Personalizer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v7

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v6}, Lcom/touchtype/personalizer/Personalizer;->getServiceId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual {v5, v9}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v11, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v11, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v8

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mService:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v11, v7}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v3

    goto :goto_1

    :pswitch_1
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e022a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_2
    const/4 v11, 0x7

    if-ne v7, v11, :cond_2

    const v11, 0x7f0e022f

    :goto_3
    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    const v11, 0x7f0e022e

    goto :goto_3

    :pswitch_3
    const v11, 0x7f0e022c

    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_4
    const v11, 0x7f0e022d

    invoke-direct {p0, v3, v4, v11, v13}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_5
    const v11, 0x7f0e0230

    const v12, 0x7f0e0231

    invoke-direct {p0, v3, v4, v11, v12}, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->setSummary(JII)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_6
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->settingActivity:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e0232

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v11, ""

    invoke-virtual {v5, v11}, Lcom/touchtype/personalizer/PersonalizerPreference;->update(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->mClearLanguageDataPreference:Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
