.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

.field private mStatsType:I

.field private mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090a2d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private addPowerSavingPreference(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private isDisplayedPowerSaving()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private refreshStats()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v17

    const-string v18, "screen.full"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    const-wide/high16 v19, 0x4024000000000000L

    cmpg-double v17, v17, v19

    if-gez v17, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->refreshStats(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v16

    const/4 v3, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/fuelgauge/BatterySipper;

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    const-wide/high16 v19, 0x4014000000000000L

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_2

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v19

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059000000000000L

    mul-double v12, v17, v19

    const-wide/high16 v17, 0x3ff0000000000000L

    cmpg-double v17, v12, v17

    if-ltz v17, :cond_2

    new-instance v14, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1, v15}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v17

    const-wide/high16 v19, 0x4059000000000000L

    mul-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v19

    div-double v10, v17, v19

    iput-wide v12, v15, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v17, 0x7fffffff

    invoke-virtual {v15}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v14, v10, v11, v12, v13}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "tphone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v7, "com.skt.prod.phone"

    const-string v8, "com.skt.prod.dialer"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f091bb5

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.skt.prod.phone"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.skt.prod.dialer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_4
    const-string v17, "PowerUsageSummary"

    const-string v18, "remove T phone"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, -0x3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    :cond_8
    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPowerSavingPreference(I)V

    :cond_a
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_ATT_Device_Health_Enabled"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v19, "display_battery_percentage"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPowerSavingPreference(I)V

    goto :goto_2

    :cond_d
    const/16 v17, 0x0

    goto :goto_3

    :cond_e
    const/4 v6, 0x0

    goto :goto_4
.end method


# virtual methods
.method public init()V
    .locals 7

    const v4, 0x7f09099d

    const v3, 0x7f09099c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "display_battery_percentage"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "adaptive_fast_charging"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "powersaving_switch"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_2
    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const v1, 0x7f0700ad

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "battery_status"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "display_battery_level"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "power_saving_mode_battery"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "powersaving"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "ultra_powersaving"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v3, "adaptive_fast_charging"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v3, 0x64

    if-lt v1, v3, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10

    const v9, 0x7f090d2d

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_1

    move v2, v4

    :goto_0
    const/4 v6, 0x2

    const v7, 0x7f090a70

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f020258

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x72

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_1
    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v5, v8, v4, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x7f02016d

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090d34

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v5, v8, v5, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->destroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:appid"

    const-string v4, "power_saving_mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "helphub:section"

    const-string v4, "power_saving_mode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v3, "PowerUsageSummary"

    const-string v4, "There is no help app."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    goto :goto_0

    :pswitch_0
    iget v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v4, :cond_3

    iput v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->pause()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->isDisplayedPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mSettingValue:I

    if-ne v1, v3, :cond_1

    move v2, v3

    :goto_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    instance-of v1, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "stats"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090a3e

    move-object v6, v5

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    :cond_1
    move v2, v7

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "PowerUsageSummary"

    const-string v2, "ClassCastException while trying to get checkBoxStatePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "display_battery_percentage"

    if-eqz v1, :cond_3

    move v7, v3

    :cond_3
    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAdaptiveFastCharging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adaptive_fast_charging"

    if-eqz v1, :cond_5

    move v7, v3

    :cond_5
    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_2

    :cond_9
    instance-of v1, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_a

    move v3, v7

    goto :goto_2

    :cond_a
    move-object v1, p2

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 15

    const/4 v10, 0x0

    iget-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_0
    const-string v11, "extra_setting_value"

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_1
    if-eqz v6, :cond_6

    iput-boolean v10, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->init()V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v11

    if-ge v8, v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    :cond_2
    :goto_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->removeOneDepthArrayLinkKey()V

    :goto_3
    return-void

    :cond_3
    const-string v11, "extra_second_fragment_bundle_key"

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v11, "display_battery_level"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "adaptive_fast_charging"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0, v9, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x64

    invoke-virtual {v5, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_3
.end method
