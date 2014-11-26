.class public Lcom/android/settings/sleepingmode/SleepingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SleepingModeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# static fields
.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mDummyDate:Ljava/util/Calendar;

.field private mEndhour:I

.field private mEndmin:I

.field private mSetTimeFromDialogPref:Landroid/preference/Preference;

.field private mSetTimePref:Landroid/preference/PreferenceCategory;

.field private mSetTimeToDialogPref:Landroid/preference/Preference;

.field private mSleepingModeEnabler:Lcom/android/settings/sleepingmode/SleepingModeEnabler;

.field private final mSleepingModeObserver:Landroid/database/ContentObserver;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sleepingmode/SleepingModeSettings$1;-><init>(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSleepingModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/sleepingmode/SleepingModeSettings;II)V
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setEndTime(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/sleepingmode/SleepingModeSettings;I)V
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/sleepingmode/SleepingModeSettings;II)V
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/sleepingmode/SleepingModeSettings;I)V
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sleepingmode/SleepingModeSettings;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/sleepingmode/SleepingModeSettings;)I
    .locals 1
    .param p0    # Lcom/android/settings/sleepingmode/SleepingModeSettings;

    iget v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    return v0
.end method

.method private setEndTime(II)V
    .locals 9
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_end_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_end_min"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setStartTime(II)V
    .locals 9
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_start_hour"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_start_min"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initPref()V
    .locals 3

    const v2, 0x7f040235

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mDummyDate:Ljava/util/Calendar;

    const-string v0, "set_time_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimePref:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sleepingmode/SleepingModeSettings$2;-><init>(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimePref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sleepingmode/SleepingModeSettings$3;-><init>(Lcom/android/settings/sleepingmode/SleepingModeSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimePref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method initSwitchBtn()V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

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

    iget-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarLayout:Landroid/view/View;

    :cond_1
    new-instance v3, Lcom/android/settings/sleepingmode/SleepingModeEnabler;

    iget-object v4, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/sleepingmode/SleepingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSleepingModeEnabler:Lcom/android/settings/sleepingmode/SleepingModeEnabler;

    return-void
.end method

.method loadSleepingmodeTime()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0700e2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->initSwitchBtn()V

    invoke-virtual {p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->initPref()V

    iget-object v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sleepingmode_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1    # I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :cond_0
    packed-switch p1, :pswitch_data_0

    iput-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSleepingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSleepingModeEnabler:Lcom/android/settings/sleepingmode/SleepingModeEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->updateSleepingModePage()V

    invoke-virtual {p0}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->loadSleepingmodeTime()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleepingmode_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSleepingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1    # Landroid/widget/TimePicker;
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x1

    sget v1, Lcom/android/settings/sleepingmode/SleepingModeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v1, v3, :cond_2

    iput p2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I

    iput p3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setStartTime(II)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStarthour:I

    iget v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mStartmin:I

    iget v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setEndTime(II)V

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
    const-string v1, "SleepingmodeSettings"

    const-string v2, "Broadcast intent : android.settings.SLEEPINGMODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    sget v1, Lcom/android/settings/sleepingmode/SleepingModeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput p2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    iput p3, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    invoke-direct {p0, p2, p3}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setEndTime(II)V

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    iget v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/sleepingmode/SleepingModeSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateSleepingModePage()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sleepingmode_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeFromDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeSettings;->mSetTimeToDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
