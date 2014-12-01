.class Lcom/android/settings/SettingsTabActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

.field private mTetheredData:I

.field private final mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

.field private final mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput v4, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTetheredData:I

    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v5, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/settings/wifi/WifiCallingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/wifi/WifiCallingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    :goto_0
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    new-instance v1, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v1, Lcom/android/settings/DrivingModeEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Lcom/android/settings/motion/MotionEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Lcom/android/settings/AirViewEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    new-instance v1, Lcom/android/settings/torchlight/TorchlightEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/torchlight/TorchlightEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v1, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    :goto_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    :goto_2
    invoke-static {v1}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v5, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1, v2, v5}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    :cond_3
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x10c

    const v2, 0x109009a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/16 v1, 0x141

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_7

    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    return-void

    :cond_4
    iput-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v5}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 7

    const-wide/32 v5, 0x7f0b0751

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b076c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0771

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0772

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0770

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0776

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0777

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0782

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0783

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b077f

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07c6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b075e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0760

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0784

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0761

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0732

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchSettingValue:I
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$600()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b074d

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/wifi/WifiEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    :goto_1
    # setter for: Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z
    invoke-static {v1}, Lcom/android/settings/SettingsTabActivity;->access$402(Z)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b074f

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b075e

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0760

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0771

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    :cond_4
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0772

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/DrivingModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    :cond_5
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b076c

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    :cond_6
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0777

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    :cond_7
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0783

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/AirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    :cond_8
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0784

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v2, v0}, Lcom/android/settings/VoiceInputControlEnabler;->updateSwitch(Z)V

    goto/16 :goto_1

    :cond_9
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0776

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    :cond_a
    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v2

    const-wide/32 v4, 0x7f0b0782

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v2, p1, v0}, Lcom/android/settings/FingerAirViewEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "SettingsTapActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDirectSettingValue() mSearchHeaderID none : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/SettingsTabActivity;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$700()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v6}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    const/16 v16, 0x0

    if-nez p2, :cond_8

    new-instance v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsTabActivity$1;)V

    packed-switch v7, :pswitch_data_0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    packed-switch v7, :pswitch_data_1

    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074e

    cmp-long v17, v17, v19

    if-nez v17, :cond_1

    :cond_1
    return-object v16

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isTablet:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x109010a

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090107

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_3
    move-object/from16 v17, v16

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x1090108

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_3

    :cond_3
    new-instance v16, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const v19, 0x1010208

    invoke-direct/range {v16 .. v19}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040258

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0b00bb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x7f0b007f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x109010a

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109010c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_4
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x10203a9

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109010d

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f0401c6

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0b00bb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x7f0b007f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_5
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109009a

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040219

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0b052c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const/high16 v17, 0x60000

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    const v17, 0x7f0b052d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$2;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/SearchView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f090629

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    invoke-virtual {v11}, Landroid/widget/SearchView;->clearFocus()V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v16, p2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040258

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0b00bb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x7f0b007f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v17, 0x7f0b0561

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_9

    instance-of v0, v15, Landroid/widget/LinearLayout;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    const v17, 0x7f0b00bb

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v17, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$3;-><init>(Lcom/android/settings/SettingsTabActivity$HeaderAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_6
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074d

    cmp-long v17, v17, v19

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    # getter for: Lcom/android/settings/SettingsTabActivity;->mIsFromSearch:Z
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$300()Z

    move-result v17

    if-eqz v17, :cond_b

    # getter for: Lcom/android/settings/SettingsTabActivity;->mDirectSettingEnabler:Z
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$400()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    :cond_b
    const v17, 0x1020322

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v17

    if-eqz v17, :cond_d

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v17, v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_d
    :pswitch_6
    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0774

    cmp-long v17, v17, v19

    if-nez v17, :cond_e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f091336

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_23

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v17, "VZW"

    # getter for: Lcom/android/settings/SettingsTabActivity;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/SettingsTabActivity;->access$500()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_22

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074d

    cmp-long v17, v17, v19

    if-eqz v17, :cond_f

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074f

    cmp-long v17, v17, v19

    if-nez v17, :cond_22

    :cond_f
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->isDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mHeaderItemLayoutResID:I

    move/from16 v17, v0

    const v18, 0x109010a

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109010c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_9
    const v17, 0x1020006

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x10203a9

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x109010d

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f0401c6

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x7f0b00bb

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v17, 0x1020016

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v17, 0x1020010

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v17, 0x7f0b007f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    iput-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_13
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074c

    cmp-long v17, v17, v19

    if-nez v17, :cond_14

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/wifi/WifiCallingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_14
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074e

    cmp-long v17, v17, v19

    if-nez v17, :cond_15

    :cond_15
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0751

    cmp-long v17, v17, v19

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_16
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b076c

    cmp-long v17, v17, v19

    if-nez v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_17
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0771

    cmp-long v17, v17, v19

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_18
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0772

    cmp-long v17, v17, v19

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_19
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0770

    cmp-long v17, v17, v19

    if-nez v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1a
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0776

    cmp-long v17, v17, v19

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/torchlight/TorchlightEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1b
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0777

    cmp-long v17, v17, v19

    if-nez v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1c
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b077f

    cmp-long v17, v17, v19

    if-nez v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1d
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0782

    cmp-long v17, v17, v19

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1e
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0783

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b075e

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0760

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a

    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074f

    cmp-long v17, v17, v19

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_1f
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0784

    cmp-long v17, v17, v19

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_20
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b0761

    cmp-long v17, v17, v19

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    :cond_21
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    iget v0, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_22
    iget-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7f0b074f

    cmp-long v17, v17, v19

    if-nez v17, :cond_0

    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_23
    iget-object v0, v8, Lcom/android/settings/SettingsTabActivity$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getCount()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->getItemViewType(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mTorchlightEnabler:Lcom/android/settings/torchlight/TorchlightEnabler;

    invoke-virtual {v0}, Lcom/android/settings/torchlight/TorchlightEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mLaunchCameraEnabler:Lcom/android/settings/launchcamera/LaunchCameraEnabler;

    invoke-virtual {v0}, Lcom/android/settings/launchcamera/LaunchCameraEnabler;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mVoiceInputEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    :cond_4
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/SettingsTabActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
