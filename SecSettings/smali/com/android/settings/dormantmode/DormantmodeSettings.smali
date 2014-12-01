.class public Lcom/android/settings/dormantmode/DormantmodeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final ALLOWEDGROUP:[Ljava/lang/String;

.field static final ALLOWEDLIST:[Ljava/lang/String;

.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private builder:Landroid/net/Uri$Builder;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

.field private mAllowedContactsPref:Landroid/preference/ListPreference;

.field private mAllowedGroupPref:Landroid/preference/Preference;

.field private mAllowedListPref:Landroid/preference/Preference;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDormantModeObserver:Landroid/database/ContentObserver;

.field private mDummyDate:Ljava/util/Calendar;

.field private mEndhour:I

.field private mEndmin:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mFromHasFocus:Z

.field private mHelpPref:Lcom/android/settings/UnclickablePreference;

.field private mIncomingCallPref:Landroid/preference/CheckBoxPreference;

.field private mIsGoingIntoAllowedGroup:Z

.field private mIsGoingIntoAllowedList:Z

.field private mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;

.field private mToHasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDLIST:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDGROUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedGroup:Z

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFromHasFocus:Z

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mToHasFocus:Z

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->builder:Landroid/net/Uri$Builder;

    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings$1;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFromHasFocus:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/dormantmode/DormantmodeSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFromHasFocus:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mToHasFocus:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/dormantmode/DormantmodeSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mToHasFocus:Z

    return p1
.end method

.method static synthetic access$902(I)I
    .locals 0

    sput p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method private setAllowListsummery(Ljava/lang/String;)V
    .locals 7

    const v3, 0x7f0a00dc

    const v2, 0x7f0a00db

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v5, v4, v0

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setEndTime(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStartTime(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method initDromantswitchBtn()V
    .locals 9

    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    new-instance v3, Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, v7}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    return-void
.end method

.method public initPref()V
    .locals 10

    const v9, 0x7f0915e2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDummyDate:Ljava/util/Calendar;

    const-string v4, "dormant_mode_help"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/UnclickablePreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    :goto_0
    const-string v4, "disable_incoming_calls"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dormant_disable_incoming_calls"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "disable_notifications"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dormant_disable_notifications"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "disable_alarm_and_timer"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dormant_disable_alarm_and_timer"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "disable_led_indicator"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dormant_disable_led_indicator"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "always"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "dormant_always"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const-string v4, "allowed_contacts"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dormant_allow_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dormant_allow_list"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    const-string v4, "allowed_list"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Custom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v4, "allowed_group"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Group"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v4, "set_time_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/settings/dormantmode/DormantmodeSettings$3;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/android/settings/dormantmode/DormantmodeSettings$3;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v7, 0x7f040099

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v7, 0x64

    if-lt v4, v7, :cond_11

    move v3, v5

    :goto_7
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "feature_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v4, "allowed_contacts_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v4}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    const v5, 0x7f0a00d9

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    const v5, 0x7f0a00da

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :cond_8
    const-string v4, "allowed_contacts_category"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Lcom/android/settings/UnclickablePreference;

    const v7, 0x7f0915e1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    move v4, v6

    goto/16 :goto_1

    :cond_c
    move v4, v6

    goto/16 :goto_2

    :cond_d
    move v4, v6

    goto/16 :goto_3

    :cond_e
    move v4, v6

    goto/16 :goto_4

    :cond_f
    move v4, v6

    goto/16 :goto_5

    :cond_10
    move v4, v6

    goto/16 :goto_6

    :cond_11
    move v3, v6

    goto/16 :goto_7
.end method

.method loadDormantTime()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFromHasFocus:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mToHasFocus:Z

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$2;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initDromantswitchBtn()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initPref()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :cond_0
    packed-switch p1, :pswitch_data_0

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "DormantModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedGroup:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v4, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0915f6

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "allowed_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "Custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDLIST:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v10

    :catch_0
    move-exception v0

    const-string v1, "DormantModeSettings"

    const-string v2, "could not set KEY_ALLOW_LIST"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    const-class v0, Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const v7, 0x7f0915ee

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v10}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iput-boolean v11, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    const-string v0, "DormantModeSettings"

    const-string v1, "display custom contact list for tablet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "Group"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v0, "content://com.android.contacts/groups_list/aggregated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDGROUP:[Ljava/lang/String;

    const-string v7, "sec_custom_dormant_group=1"

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    const-class v0, Lcom/android/settings/dormantmode/DormantModeGroupList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const v7, 0x7f0915ef

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v10}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    iput-boolean v11, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedGroup:Z

    const-string v0, "DormantModeSettings"

    const-string v1, "display group contact list for tablet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget v5, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    move v2, v3

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_incoming_calls"

    if-eqz v2, :cond_4

    move v5, v3

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_2
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_notifications"

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_alarm_and_timer"

    if-eqz v2, :cond_8

    move v5, v3

    :goto_5
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v5, v4

    goto :goto_5

    :cond_9
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_led_indicator"

    if-eqz v2, :cond_a

    move v5, v3

    :goto_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_a
    move v5, v4

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_always"

    if-eqz v2, :cond_c

    move v5, v3

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v3

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v5, "DormantModeSettings"

    const-string v6, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_c
    move v5, v4

    goto :goto_7

    :cond_d
    move v5, v4

    goto :goto_8

    :cond_e
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    goto/16 :goto_2

    :cond_f
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedGroup:Z

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "DormantModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updatePref()V

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->loadDormantTime()V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedGroup:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    const-string v0, "DormantModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4

    const/4 v3, 0x1

    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v1, v3, :cond_2

    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0915e9

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string v1, "DormantModeSettings"

    const-string v2, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateDormantmodepage()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_switch_onoff"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePref()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_incoming_calls"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_notifications"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_alarm_and_timer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dormant_disable_led_indicator"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_always"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_allow_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedGroupPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4
.end method
