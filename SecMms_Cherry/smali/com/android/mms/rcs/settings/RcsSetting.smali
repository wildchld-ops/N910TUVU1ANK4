.class public Lcom/android/mms/rcs/settings/RcsSetting;
.super Landroid/preference/PreferenceFragment;
.source "RcsSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/settings/RcsSetting$9;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RcsSetting"

.field public static mRcsEnable:Z

.field public static mRcsPerEnable:Z

.field public static mRcsState:Lcom/android/mms/rcs/RcsState;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mContext:Landroid/content/Context;

.field public mDuplicatedServiceDialog:Landroid/app/DialogFragment;

.field public mFeatures:Lcom/android/mms/rcs/Features;

.field public mGetPermanentDisableObserverRegistered:Z

.field private mPermanentDisableAvailabilityState:Z

.field public mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mRcsEnableObserverRegistered:Z

.field public mRcsHomeList:Landroid/preference/ListPreference;

.field public mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

.field public mRcsPermanentPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field public mRcsPref:Landroid/preference/CheckBoxPreference;

.field public mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mRcsRoamingList:Landroid/preference/ListPreference;

.field private mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskGetRcsEnabledState:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public rcsEnableObserver:Landroid/database/ContentObserver;

.field private rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;Lcom/android/mms/rcs/RcsState;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mDuplicatedServiceDialog:Landroid/app/DialogFragment;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$3;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$4;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableAvailabilityState:Z

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$5;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$8;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$8;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    sput-object p3, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    iput-object p2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;Lcom/android/mms/rcs/RcsState;Lcom/android/mms/rcs/Features;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mDuplicatedServiceDialog:Landroid/app/DialogFragment;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$3;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$4;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableAvailabilityState:Z

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$5;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$8;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$8;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    sput-object p3, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    iput-object p4, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mFeatures:Lcom/android/mms/rcs/Features;

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/rcs/RcsState;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mDuplicatedServiceDialog:Landroid/app/DialogFragment;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$3;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$4;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableAvailabilityState:Z

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/rcs/settings/RcsSetting$5;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$7;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/rcs/settings/RcsSetting$8;

    invoke-direct {v0, p0}, Lcom/android/mms/rcs/settings/RcsSetting$8;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    sput-object p1, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/rcs/settings/RcsSetting;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetRcsEnabledState:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/rcs/settings/RcsSetting;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/rcs/settings/RcsSetting;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentDisabledState:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/mms/rcs/settings/RcsSetting;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableAvailabilityState:Z

    return p1
.end method

.method private registerRcsDisablingAvailability()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-virtual {v0}, Lcom/android/mms/rcs/Features;->isUsePermanentOption()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private toPreferenceValue(Ljava/lang/String;Landroid/preference/ListPreference;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private toPreferenceValue(ILandroid/preference/ListPreference;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private unregisterRcsDisablingAvailability()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-virtual {v0}, Lcom/android/mms/rcs/Features;->isUsePermanentOption()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPermanentDisableAvailabilityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method public checkRcsPermmanet()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "permanent_disable_availibility"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/RcsSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor is null , uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_AVAILABILITY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "Mms/RcsSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "permanent_disable_availibility"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPerEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-boolean v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPerEnable:Z

    goto :goto_0

    :cond_4
    if-ne v7, v9, :cond_5

    move v8, v9

    :cond_5
    :try_start_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public checkRcsServicestate()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "rcs_enabled"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Mms/RcsSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor is null , uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    const-string v0, "Mms/RcsSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "rcs_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-boolean v0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnable:Z

    goto :goto_0

    :cond_4
    if-ne v7, v9, :cond_5

    move v8, v9

    :cond_5
    :try_start_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public getRcsTimestampFromPreference()Ljava/lang/Long;
    .locals 5

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "rcs_services_disabled_timestamp"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public registerObserver()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    goto :goto_0
.end method

.method public registerPermanentDisableStateObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-virtual {v0}, Lcom/android/mms/rcs/Features;->isUsePermanentOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;->RCS_PERMANENT_DISABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setRcsTimestampToPreference()V
    .locals 6

    iget-object v3, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v3, "rcs_services_disabled_timestamp"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showPermanentDisableStateProgressDialog()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c051e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsSetting$2;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsSetting$2;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c051f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsSetting$1;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsSetting$1;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsEnableObserverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public unregisterPermanentDisableStateObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mFeatures:Lcom/android/mms/rcs/Features;

    invoke-virtual {v0}, Lcom/android/mms/rcs/Features;->isUsePermanentOption()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->rcsPermanentDisableStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mGetPermanentDisableObserverRegistered:Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public updateRcsPermanentDisableAvailabilityState()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/mms/rcs/settings/RcsSetting$6;

    invoke-direct {v2, p0}, Lcom/android/mms/rcs/settings/RcsSetting$6;-><init>(Lcom/android/mms/rcs/settings/RcsSetting;)V

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask;-><init>(Landroid/content/Context;Lcom/android/mms/rcs/GetPermanentDisableAvailabilityTask$IGetPermanentDisableAvailabilityCallback;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mTaskGetPermanentAvailabilityState:Landroid/os/AsyncTask;

    return-void
.end method

.method public updateUiComponents()V
    .locals 13

    const/4 v8, 0x0

    const v12, 0x7f0c0519

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v6, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v6}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v6

    sget-object v7, Lcom/android/mms/rcs/RcsState$State;->NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

    if-ne v6, v7, :cond_1

    const-string v6, "Mms/RcsSetting"

    const-string v7, "framework not initalized yet"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v6, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsState:Lcom/android/mms/rcs/RcsState;

    invoke-virtual {v6}, Lcom/android/mms/rcs/RcsState;->getState()Lcom/android/mms/rcs/RcsState$State;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    iput-object v8, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    iput-object v8, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mPermanentDisableStateProgressDialog:Landroid/app/ProgressDialog;

    :cond_3
    sget-object v6, Lcom/android/mms/rcs/settings/RcsSetting$9;->$SwitchMap$com$android$mms$rcs$RcsState$State:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsSetting;->getRcsTimestampFromPreference()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsSetting;->getRcsTimestampFromPreference()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.MM.dd  aa hh:mm"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/rcs/settings/RcsSetting;->getRcsTimestampFromPreference()Ljava/lang/Long;

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c051a

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v6, Lcom/android/mms/rcs/RcsState$State;->DEACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_DISABLED:Lcom/android/mms/rcs/RcsState$State;

    if-ne v5, v6, :cond_0

    :cond_5
    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/mms/rcs/settings/RcsSetting;->mRcsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.MM.dd  hh:mm aa"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
