.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
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

.field private isKioskContainer:Z

.field private final isTablet:Z

.field private final mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

.field private final mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

.field private final mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private final mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

.field private final mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

.field private final mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

.field private final mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

.field private final mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

.field private final mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

.field private final mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

.field private final mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private final mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private final mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

.field private final mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private mPersonalPageObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private final mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field public mSettingViewClicklistener:Landroid/view/View$OnClickListener;

.field private final mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

.field private mTetheredData:I

.field private final mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

.field private final mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

.field private final mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mTetheredData:I

    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$2;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$3;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter$9;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$HeaderAdapter$9;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isKioskContainer:Z

    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/settings/wifi/WifiCallingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiCallingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    new-instance v0, Lcom/android/settings/AirplaneModeSwitchEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/settings/ToddlerModeSwitchEnabler;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {v1, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/ToddlerModeSwitchEnabler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    :goto_1
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/settings/DrivingModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/DrivingModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    :goto_3
    new-instance v0, Lcom/android/settings/MobileDataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MobileDataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    new-instance v0, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    const-string v0, "VZW"

    # getter for: Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Settings;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isKioskContainer:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_BlockEnableSmartBonding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTFGBlockEnableSmartBonding()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    :goto_4
    new-instance v0, Lcom/android/settings/location/LocationModeEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/location/LocationModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    new-instance v0, Lcom/android/settings/motion/MotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion/MotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/settings/motion2014/MotionEnabler2014;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2014/MotionEnabler2014;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    :goto_5
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/settings/FingerAirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/FingerAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    :goto_6
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/settings/AirViewEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    :goto_7
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/settings/motion2013/AirMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/AirMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    :goto_8
    new-instance v0, Lcom/android/settings/motion2013/PalmMotionEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/motion2013/PalmMotionEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/settings/AirCommandEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AirCommandEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    :goto_9
    new-instance v0, Lcom/android/settings/MultiWindowEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MultiWindowEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    :goto_b
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {v0, p1}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_c
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0, v1, v2}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    :cond_4
    sget-object v0, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/16 v0, 0x10c

    const v1, 0x109009a

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/16 v0, 0x141

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    goto/16 :goto_2

    :cond_8
    new-instance v0, Lcom/android/settings/VoiceInputControlEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    goto/16 :goto_3

    :cond_9
    new-instance v0, Lcom/android/settings/smartbonding/SmartBondingEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/smartbonding/SmartBondingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    goto/16 :goto_5

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    goto/16 :goto_7

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    goto/16 :goto_8

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    goto/16 :goto_9

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_a

    :cond_10
    invoke-static {p1}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_b

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto/16 :goto_b

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic access$1800(Lcom/android/settings/Settings$HeaderAdapter;)Lcom/android/settings/personalpage/PersonalPageEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/Settings$HeaderAdapter;)Lcom/android/settings/smartbonding/SmartBondingEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 6

    const-wide/32 v4, 0x7f0b0751

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0752

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07c0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0753

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0771

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b078f

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0783

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0772

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0777

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_3
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0782

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07d3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0754

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0756

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b077f

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07c6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07bd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07be

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07bf

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b07b3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0788

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b075e

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0760

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0784

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0761

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0757

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b078a

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0732

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setCheckBoxTypeValue(Landroid/view/View;)V
    .locals 6

    const v1, 0x7f0b05b9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_adjust_touch"

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v5

    if-ne v5, v2, :cond_4

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    :sswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x7f0b0752 -> :sswitch_0
        0x7f0b0753 -> :sswitch_2
        0x7f0b07c0 -> :sswitch_1
    .end sparse-switch
.end method

.method private setDirectSettingValue(Landroid/widget/Switch;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    # getter for: Lcom/android/settings/Settings;->mSearchSettingValue:I
    invoke-static {}, Lcom/android/settings/Settings;->access$2500()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    # setter for: Lcom/android/settings/Settings;->mDirectSettingEnabler:Z
    invoke-static {v1}, Lcom/android/settings/Settings;->access$2302(Z)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 7

    const-wide/32 v5, 0x7f0b074f

    const/16 v4, 0x8

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0774

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "VZW"

    # getter for: Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Settings;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b074d

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0750

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090780

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void

    :cond_5
    :try_start_0
    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v1, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v0, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPowerSavingEnblerSwitch()Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->getPowerSavingSwitch()Landroid/widget/Switch;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    const/4 v2, 0x0

    if-nez p2, :cond_6

    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    packed-switch v4, :pswitch_data_1

    :goto_2
    :pswitch_0
    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b074e

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    :cond_0
    return-object v2

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x109010a

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090107

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_3
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090108

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_2
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const v6, 0x1010208

    invoke-direct {v2, v1, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040257

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b05ba

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0b05bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0b05bc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b05bd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040256

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b00bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0b00bc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0b00e2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b009b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040219

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b052c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/high16 v5, 0x60000

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    const v1, 0x7f0b052d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/settings/Settings$HeaderAdapter$4;

    invoke-direct {v5, p0}, Lcom/android/settings/Settings$HeaderAdapter$4;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/android/settings/Settings$HeaderAdapter$5;

    invoke-direct {v5, p0}, Lcom/android/settings/Settings$HeaderAdapter$5;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/SearchView;

    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090629

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setIconified(Z)V

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v6, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusable(Z)V

    iget-object v6, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setFocusableInTouchMode(Z)V

    iget-object v6, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$6;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$HeaderAdapter$6;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$7;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/Settings$HeaderAdapter$7;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setRawInputType(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x109010a

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109010c

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_4
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x10203a9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109010d

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b00bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b007f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b00bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b047c

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v1, 0x7f0b0109

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_7
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_5
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009a

    const/4 v5, 0x0

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    move-object v2, p2

    move-object v3, v1

    goto/16 :goto_1

    :pswitch_8
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x109010a

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090107

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_6
    if-nez v3, :cond_7

    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    move-object v3, v1

    :cond_7
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090108

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_6

    :cond_9
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x1010208

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_6

    :pswitch_9
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040257

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b05ba

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0b05bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0b05bc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b05bd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->round_:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_a
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040256

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v1, 0x7f0b05b6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0b05b7

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0b05b8

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b05b9

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v2, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0752

    cmp-long v1, v1, v5

    if-nez v1, :cond_e

    const v1, 0x7f0b0752

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v2, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    :cond_b
    :goto_8
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSettingViewClicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_c
    # getter for: Lcom/android/settings/Settings;->mIsFromSearch:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_3e

    # getter for: Lcom/android/settings/Settings;->mDirectSettingEnabler:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$2300()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v1, v1

    # getter for: Lcom/android/settings/Settings;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/Settings;->access$2400()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_3e

    invoke-direct {p0, v4}, Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/Settings;->mDirectSettingEnabler:Z
    invoke-static {v1}, Lcom/android/settings/Settings;->access$2302(Z)Z

    move-object v2, v4

    goto/16 :goto_2

    :cond_d
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_e
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b07c0

    cmp-long v1, v1, v5

    if-nez v1, :cond_10

    const v1, 0x7f0b07c0

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x7f0b05b9

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_adjust_touch"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    iget-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0753

    cmp-long v1, v1, v5

    if-nez v1, :cond_b

    const v1, 0x7f0b0753

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    iget-object v2, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/android/settings/ToddlerModeSwitchEnabler;->setCheckBox(Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->check_:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_8

    :pswitch_b
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v2, 0x109010a

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109010c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :goto_a
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x10203a9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_b
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b074d

    cmp-long v1, v4, v6

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    const v1, 0x7f0b074d

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "toddler_mode_switch"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_12
    :goto_c
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    # getter for: Lcom/android/settings/Settings;->mIsFromSearch:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_14

    # getter for: Lcom/android/settings/Settings;->mDirectSettingEnabler:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$2300()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_14

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    # getter for: Lcom/android/settings/Settings;->mSearchHeaderID:J
    invoke-static {}, Lcom/android/settings/Settings;->access$2400()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_14

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-direct {p0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setDirectSettingValue(Landroid/widget/Switch;)V

    :cond_14
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_15
    invoke-direct {p0, v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109010d

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_a

    :cond_17
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0b00bb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v1, 0x7f0b007f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_18
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b074c

    cmp-long v1, v4, v6

    if-nez v1, :cond_19

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/WifiCallingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_19
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07c6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_1a
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b074e

    cmp-long v1, v4, v6

    if-nez v1, :cond_1b

    :cond_1b
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0757

    cmp-long v1, v4, v6

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/MobileDataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_1c
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0751

    cmp-long v1, v4, v6

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/AirplaneModeSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_1d
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0771

    cmp-long v1, v4, v6

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_1e
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b078f

    cmp-long v1, v4, v6

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/personalpage/PersonalPageEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/personalpage/PersonalPageEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_1f
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0772

    cmp-long v1, v4, v6

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/DrivingModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/DrivingModeEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, ""

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_c

    :cond_20
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0784

    cmp-long v1, v4, v6

    if-nez v1, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    const v1, 0x7f0b0784

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/VoiceInputControlEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/VoiceInputControlEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_21
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0777

    cmp-long v1, v4, v6

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    # getter for: Lcom/android/settings/Settings;->DBG:Z
    invoke-static {}, Lcom/android/settings/Settings;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerSavingEnabler.setSwitch(holder.switch_)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_23
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0754

    cmp-long v1, v4, v6

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_24
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0756

    cmp-long v1, v4, v6

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/location/LocationModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_25
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b077f

    cmp-long v1, v4, v6

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_26
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0782

    cmp-long v1, v4, v6

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/FingerAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/FingerAirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_27
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0783

    cmp-long v1, v4, v6

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/AirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/AirViewEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_28
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07bd

    cmp-long v1, v4, v6

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/motion2013/AirMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion2013/AirMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_29
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07be

    cmp-long v1, v4, v6

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/motion/MotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion/MotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_2a
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07bf

    cmp-long v1, v4, v6

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/motion2013/PalmMotionEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_2b
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07b3

    cmp-long v1, v4, v6

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/AirCommandEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/AirCommandEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :cond_2c
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0788

    cmp-long v1, v4, v6

    if-nez v1, :cond_30

    const v1, 0x7f0b0788

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "access_control_enabled"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    :goto_d
    iget-object v4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    const/4 v4, 0x1

    :goto_e
    iget-object v5, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Lcom/android/settings/MultiWindowEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v5, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v5, v0, p1}, Lcom/android/settings/MultiWindowEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    if-eqz v1, :cond_2d

    if-nez v4, :cond_12

    :cond_2d
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_2e
    const/4 v1, 0x0

    goto :goto_d

    :cond_2f
    const/4 v4, 0x0

    goto :goto_e

    :cond_30
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07d3

    cmp-long v1, v4, v6

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/MouseHoveringViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_31
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b07ca

    cmp-long v1, v4, v6

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/dmr/DMREnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_32
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b075e

    cmp-long v1, v4, v6

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/nfc/NfcEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_33
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0760

    cmp-long v1, v4, v6

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_34
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b074f

    cmp-long v1, v4, v6

    if-nez v1, :cond_36

    const-string v1, "VZW"

    # getter for: Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Settings;->access$2000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    iget-object v5, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V

    goto/16 :goto_c

    :cond_35
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_36
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b0761

    cmp-long v1, v4, v6

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/NearbyEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_c

    :cond_37
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b078a

    cmp-long v1, v4, v6

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    iget-object v4, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Lcom/android/settings/toolbox/ToolboxEnabler;->setSwitch(Landroid/widget/Switch;)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v1, v0, p1}, Lcom/android/settings/toolbox/ToolboxEnabler;->setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_c

    :pswitch_c
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f0b079d

    cmp-long v1, v4, v6

    if-nez v1, :cond_38

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    :goto_f
    if-eqz v1, :cond_3a

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v4, 0x7f02031a

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_10
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/settings/Settings$HeaderAdapter$8;

    invoke-direct {v4, p0}, Lcom/android/settings/Settings$HeaderAdapter$8;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38
    :goto_11
    invoke-direct {p0, v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    :cond_39
    const/4 v1, 0x0

    goto :goto_f

    :cond_3a
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v4, 0x1080078

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_10

    :cond_3b
    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :pswitch_d
    iget-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_12
    if-nez v3, :cond_3c

    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    :cond_3c
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    :cond_3d
    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109009a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_12

    :cond_3e
    move-object v2, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->pause()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->pause()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->pause()V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->pause()V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/Settings$HeaderAdapter;->unregisterForWfcAndAirPlaneStatus()V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->pause()V

    :cond_8
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->pause()V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->pause()V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->pause()V

    :cond_b
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->pause()V

    :cond_c
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->pause()V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->pause()V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->pause()V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->pause()V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->pause()V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    :cond_12
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    :cond_13
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    invoke-virtual {v0}, Lcom/android/settings/dmr/DMREnabler;->pause()V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    :cond_15
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_16
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->pause()V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->pause()V

    :cond_18
    return-void
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiCallingEnabler:Lcom/android/settings/wifi/WifiCallingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiCallingEnabler;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeSwitchEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToddlerModeSwitchEnabler:Lcom/android/settings/ToddlerModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ToddlerModeSwitchEnabler;->resume()V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDrivingModeEnabler:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeEnabler;->resume()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mVoiceInputControlEnabler:Lcom/android/settings/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputControlEnabler;->resume()V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/smartbonding/SmartBondingEnabler;->resume()V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSmartBondingEnabler:Lcom/android/settings/smartbonding/SmartBondingEnabler;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/Settings$HeaderAdapter;->registerForWfcAndAirPlaneStatus()V

    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mLocationModeEnabler:Lcom/android/settings/location/LocationModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationModeEnabler;->resume()V

    :cond_8
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler:Lcom/android/settings/motion/MotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionEnabler;->resume()V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMotionEnabler2014:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-virtual {v0}, Lcom/android/settings/motion2014/MotionEnabler2014;->resume()V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mFingerAirViewEnabler:Lcom/android/settings/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/FingerAirViewEnabler;->resume()V

    :cond_b
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirViewEnabler:Lcom/android/settings/AirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirViewEnabler;->resume()V

    :cond_c
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirMotionEnabler:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->resume()V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPalmMotionEnabler:Lcom/android/settings/motion2013/PalmMotionEnabler;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->resume()V

    :cond_e
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirplaneModeCheckEnabler:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->resume()V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAirCommandEnabler:Lcom/android/settings/AirCommandEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirCommandEnabler;->resume()V

    :cond_10
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMouseHoveringViewEnabler:Lcom/android/settings/MouseHoveringViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringViewEnabler;->resume()V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    :cond_12
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSBeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    :cond_13
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    invoke-virtual {v0}, Lcom/android/settings/dmr/DMREnabler;->resume()V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    :cond_15
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_16
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mMobileDataEnabler:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MobileDataEnabler;->resume()V

    :cond_17
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->resume()V

    :cond_18
    return-void
.end method

.method public setEnablersForGuide(Lcom/android/settings/Settings;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {p1, v0, v1}, Lcom/android/settings/guide/GuideFragment;->setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
