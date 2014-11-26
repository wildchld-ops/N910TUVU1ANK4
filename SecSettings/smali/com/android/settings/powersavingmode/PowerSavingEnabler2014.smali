.class public final Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;
.super Ljava/lang/Object;
.source "PowerSavingEnabler2014.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isLowLevel:I

.field private mChangedAutoEnable:Z

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mDataCheck:Z

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->refresh_SwitchPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Switch;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014$1;-><init>(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/widget/Switch;
    .param p3    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-boolean p3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIsInMainMenu:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;I)I
    .locals 0
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/widget/Switch;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0    # Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private isAutoEnable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_auto_turn_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "PowerSavingEnabler2014"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public changeAutoEnable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    return-void
.end method

.method public getLimitBackgoundData()I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_powersaving_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAutoEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    if-ne v3, v5, :cond_2

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_powersaving: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-ne v0, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "PowerSavingEnabler2014"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", basic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", black_grey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_haptic_feedback"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_1

    if-ne v0, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_haptic_feedback"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v5, 0x7f09148e

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "powersaving_switch"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "PowerSavingEnabler2014"

    const-string v4, "switch is on"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v0, :cond_1

    if-ne v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "PowerSavingEnabler2014"

    const-string v4, "switch is off"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 8

    const/high16 v7, 0x10000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCheck = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mDataCheck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "PowerSavingEnabler2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powersaving_switch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "powersaving_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_5

    const-string v3, "changed"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    if-eqz v3, :cond_0

    const-string v3, "changed"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_powersaving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "powersaving_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isAutoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    if-ne v2, v1, :cond_4

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    if-eq v2, v0, :cond_4

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isInVoLTECall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnChatonCall()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "limit_bgdata"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v2

    if-ne v2, v1, :cond_7

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v3, 0x7f091b44

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_4
    return-void

    :cond_5
    const-string v3, "changed"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PowerSavingEnabler2014"

    const-string v3, "no BroadcastReceiver to be unregistered"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const v3, 0x7f091b45

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "BgDataChanged"

    const-string v2, "LimitData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "limit_bgdata"

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->getLimitBackgoundData()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public refresh_SwitchPreference()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    const-string v1, "PowerSavingEnabler2014"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersaving_switch ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mChangedAutoEnable:Z

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "isLowLevel"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->isLowLevel:I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "powersaving_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "resume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "mSwitch == null"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_1

    const-string v1, "PowerSavingEnabler2014"

    const-string v4, "mSwitchPref == null"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v0, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mCheck:I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "data_powersaving_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mDataCheck:Z

    if-ne v0, v2, :cond_7

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    const-string v1, "PowerSavingEnabler2014"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_8
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingEnabler2014;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method
