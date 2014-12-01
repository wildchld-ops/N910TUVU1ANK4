.class public Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# instance fields
.field private final EXCEPTION_CASE_GROUP_PLAY:I

.field private changeString:Ljava/lang/String;

.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field endConnect:Landroid/view/MenuItem;

.field private extraCauseOfStart:I

.field helpMenu:Landroid/view/MenuItem;

.field private isChanged:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mAutoGO:Z

.field private mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

.field mBtn_ScanStop:Landroid/widget/Button;

.field mButtonLayout:Landroid/widget/LinearLayout;

.field private mCanShake:Z

.field private mCertCategory:Landroid/preference/PreferenceGroup;

.field private mConnectingDevice:Ljava/lang/String;

.field private mConnectingDialogCalled:Z

.field private mContext:Landroid/content/Context;

.field private mControlByWfdService:Z

.field private mDebugEnable:Z

.field private mDeviceAddress:Ljava/lang/String;

.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableSwitch:Z

.field mEndConnect:Landroid/widget/Button;

.field private mGlobalEditDeviceName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasOxygenPaused:Z

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mInPickerDialog:Z

.field private mListen:Z

.field private mListenChannel:I

.field private mMenu:Landroid/view/ContextMenu;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceLayoutBg:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mOperatingChannel:I

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mScanInProgress:Z

.field private final mScanTimeout:Ljava/lang/Runnable;

.field private mSetPrevSettingsDetach:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mTitleId:I

.field protected mTurningWifiDisplayOn:Z

.field private mWifiDisplayCertificationOn:Z

.field protected mWifiDisplayOnSetting:Z

.field protected mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I

.field private privScanState:I

.field scanStop:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mControlByWfdService:Z

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->EXCEPTION_CASE_GROUP_PLAY:I

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$18;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$18;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$19;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$19;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$20;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$20;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wfd/WifiDisplaySettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method private applyState()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const-string v0, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    if-eq v1, v0, :cond_6

    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    if-eqz v0, :cond_7

    const-string v0, "WifiDisplaySettings"

    const-string v2, "applyState oxygen is ON "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_8

    const/4 v0, 0x3

    if-ne v1, v0, :cond_11

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const v3, 0x7f090560

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "launch_from_help"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    if-eq v0, v2, :cond_12

    const/4 v0, 0x1

    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_15

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    if-eqz v0, :cond_13

    const v0, 0x7f091566

    const v4, 0x7f0400e8

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    :cond_9
    :goto_4
    iput v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->privScanState:I

    :cond_a
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_b
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_16

    aget-object v7, v4, v0

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    if-eqz v8, :cond_c

    const-string v8, "WifiDisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyState AvailableDisplayAddress = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x3

    if-ne v1, v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_display_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const v3, 0x7f09089d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const v3, 0x7f090560

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "WifiDisplaySettings"

    const-string v3, "applyState scanbtn hide"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_13
    if-nez v2, :cond_14

    if-nez v3, :cond_14

    const v0, 0x7f091565

    const v4, 0x7f0400e8

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings;->showHelpDialog(II)V

    goto/16 :goto_4

    :cond_14
    const/4 v0, 0x1

    if-ne v3, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->dismissHelpDialog()V

    goto/16 :goto_4

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->dismissHelpDialog()V

    goto/16 :goto_4

    :cond_16
    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getLastConnectedDisplay(Z)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v5, :cond_17

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V

    :cond_17
    if-eqz v1, :cond_1c

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_18
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v3, 0x7f090551

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1a
    :goto_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_6

    :cond_1c
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v1, :cond_1a

    :cond_1d
    array-length v1, v0

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_20

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    :goto_8
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_1f
    new-instance v0, Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x7f0902ea

    invoke-direct {v0, v1, v3, v4}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    :cond_20
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_21
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    if-nez v1, :cond_24

    new-instance v1, Lcom/android/settings/ProgressCategory;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x7f0902ea

    invoke-direct {v1, v5, v6, v7}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    iget v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    :goto_9
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    if-eqz v1, :cond_22

    if-eqz v4, :cond_22

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyState lastConnectedDisplay.getDeviceName() = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", lastConnectedDisplay.getDeviceAddress() = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    array-length v2, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_28

    aget-object v5, v0, v1

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/settings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_25

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    if-nez v6, :cond_25

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    if-eqz v6, :cond_25

    if-nez v3, :cond_25

    const-string v5, "WifiDisplaySettings"

    const-string v6, "connect for smart-school"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    :cond_23
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_9

    :cond_25
    if-eqz v4, :cond_26

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    if-nez v6, :cond_23

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v6, :cond_23

    if-nez v3, :cond_23

    const-string v6, "WifiDisplaySettings"

    const-string v7, "connectLastConnection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectLastConnection(Landroid/hardware/display/WifiDisplay;)V

    goto :goto_b

    :cond_26
    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v6

    if-nez v6, :cond_23

    const/4 v6, 0x1

    if-eq v3, v6, :cond_23

    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    iget-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    iget-object v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_27
    const-string v6, "WifiDisplaySettings"

    const-string v7, "Only one device found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_b

    :cond_28
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    goto/16 :goto_7

    :cond_29
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    goto/16 :goto_7

    :cond_2a
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2b

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1a

    :cond_2b
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v1, :cond_2e

    :cond_2c
    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1a

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2f
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const v1, 0x7f090592

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_31
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_1

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0902f8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    const v1, 0x7f0902fb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Default"

    aput-object v2, v1, v5

    const-string v2, "PBC"

    aput-object v2, v1, v6

    const-string v2, "KEYPAD"

    aput-object v2, v1, v7

    const-string v2, "DISPLAY"

    aput-object v2, v1, v8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "4"

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "2"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v8

    const v3, 0x7f0902fe

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    const v3, 0x7f0902ff

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Auto"

    aput-object v2, v1, v5

    const-string v2, "1"

    aput-object v2, v1, v6

    const-string v2, "6"

    aput-object v2, v1, v7

    const-string v2, "11"

    aput-object v2, v1, v8

    const-string v2, "36"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    const-string v3, "6"

    aput-object v3, v2, v7

    const-string v3, "11"

    aput-object v3, v2, v8

    const-string v3, "36"

    aput-object v3, v2, v4

    const v3, 0x7f090300

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_0
.end method

.method private checkDebugLogEnable()V
    .locals 2

    const-string v0, "secmm.wfds.wfds"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDisplaySettings"

    const-string v1, "WifiDisplaySettings debug log enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDebugEnable:Z

    goto :goto_0
.end method

.method private connectLastConnection(Landroid/hardware/display/WifiDisplay;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private connectWifiDisplay(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    return-void
.end method

.method private connectWifiDisplayWithPin(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "connectWifiDisplayWithPin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    return-void
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/text/InputFilter;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$21;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$21;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    aput-object v0, v2, v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0402b5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b0677

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    const v1, 0x7f0b06e3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b06e4

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "~`!@$%^&*()-_=+[];\\:\'\",<.>/?"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$22;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$22;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0905ac

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090859

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$24;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$24;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09085a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$23;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$23;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$25;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$25;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$26;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$26;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$27;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$27;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const v1, 0x7f0402a4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_1
    return-object v0

    :pswitch_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "WifiDisplayStatus.DISPLAY_STATE_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0902ec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0902ee

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDongleRenameAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDongleRenameAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVZW()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "USA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "WifiDisplaySettings"

    const-string v3, "Print call stack for debugging."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isWfdBrokerRunning()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sec.android.app.wfdbroker.WfdBroker"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isWfdConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWfdConnecting()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setListenMode(Z)V
    .locals 3

    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting listen mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private setMenuIcon()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "WifiDisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMenuIcon():: isLandscape="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_3

    :cond_0
    const-string v0, "WifiDisplaySettings"

    const-string v1, "onConfigurationChanged:: menu item is not created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    if-eqz v0, :cond_7

    const-string v0, "WifiDisplaySettings"

    const-string v2, "land split"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v2, 0x7f020514

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    const v2, 0x7f0207dc

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_7
    const/4 v0, 0x3

    if-ne v3, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEnableSwitch:Z

    if-eqz v0, :cond_8

    const-string v0, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup spilt mEnableSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    const v3, 0x7f0207df

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    const v3, 0x7f020514

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private setWifiP2pChannels(II)V
    .locals 3

    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wifi p2p channel: lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private showDisconnectDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$28;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$28;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$29;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$29;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0902f1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0902f3

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0902f2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startAutoGO()V
    .locals 3

    const-string v0, "WifiDisplaySettings"

    const-string v1, "Starting Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    const-string v0, "WifiDisplaySettings"

    const-string v1, "Stopping Autonomous GO..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHelpPackageVersionCode(Ljava/lang/String;)I
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/16 v5, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v3, "WifiDisplaySettings"

    const-string v4, "onActivityCreated()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WifiDisplaySettings"

    const-string v4, "onCreate : Set Switch padding 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v0, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v9, v9, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v3, :cond_4

    const-string v3, "WifiDisplaySettings"

    const-string v4, "Connected but mWifiDisplayOnSetting false, so change status"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    new-instance v3, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchPreferenceOnCheckedChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    const v4, 0x7f09058e

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "WifiDisplaySettings"

    const-string v2, "Btn_ScanStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WifiDisplaySettings"

    const-string v2, "scanWifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onOptionsItemSelected scanWifiDisplays"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_0

    :cond_2
    const-string v1, "WifiDisplaySettings"

    const-string v2, "stopWifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    goto :goto_0

    :pswitch_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "Btn_EndConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b061e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplayWithPin(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRenameDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0902eb

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTitleId:I

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->checkDebugLogEnable()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdBrokerRunning()Z

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const v1, 0x7f07010e

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "deviceAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDeviceAddress:Ljava/lang/String;

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() : mInPickerDialog="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v1, "cause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->extraCauseOfStart:I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    const v1, 0x7f09058d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->isConnWithPinSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiDisplaySettings"

    const-string v1, "user press to connect with pin!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const v1, 0x7f0905ab

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const v1, 0x7f0905ac

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const v0, 0x7f09089d

    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->scanStop:Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v3, 0x7f090561

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->endConnect:Landroid/view/MenuItem;

    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getHelpPackageVersionCode(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const v0, 0x7f090566

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch_from_help"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->helpMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->setMenuIcon()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_2
    const v0, 0x7f090560

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b0254

    const v3, 0x7f0905a8

    const-string v1, "WifiDisplaySettings"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f04027e

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_0

    const v1, 0x7f0b061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const v1, 0x7f0b061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    const v1, 0x7f0b061d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mButtonLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f020702

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0b061c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceLayoutBg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mBtn_ScanStop:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEndConnect:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isVZW()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0b061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v1, 0x7f0b0253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const v1, 0x7f0b061b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f0204c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0

    :cond_1
    const v1, 0x7f04027d

    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0905a9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onDetach()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "WifiDisplaySettings"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    const-string v0, "wlan.wfd.settingontop"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSetPrevSettingsDetach:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "wlan.wfd.pickerdialogontop"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v1, Landroid/hardware/display/DisplayManager$WfdAppState;->TEARDOWN:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isWfdBrokerRunning()Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WifiDisplaySettings"

    const-string v2, "scanWifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v1, "WifiDisplaySettings"

    const-string v2, "onOptionsItemSelected scanWifiDisplays"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    goto :goto_1

    :cond_2
    const-string v1, "WifiDisplaySettings"

    const-string v2, "stopWifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopScanWifiDisplays()V

    goto :goto_1

    :pswitch_1
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    invoke-virtual {p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings;->getHelpPackageVersionCode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, "helphub:section"

    const-string v3, "allshare_cast"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "WifiDisplaySettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_4

    const-string v1, "wlan.wfd.settingontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMenu:Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/view/ContextMenu;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiIBSSEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHasOxygenPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->PAUSE:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string v1, "wlan.wfd.pickerdialogontop"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause IllegalArgumentException e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    instance-of v2, p2, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showDisconnectDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDialogCalled:Z

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mConnectingDevice:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "WifiDisplaySettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-nez v1, :cond_3

    const-string v1, "wlan.wfd.settingontop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    sget-object v2, Landroid/hardware/display/DisplayManager$WfdAppState;->RESUME:Landroid/hardware/display/DisplayManager$WfdAppState;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->setActivityState(Landroid/hardware/display/DisplayManager$WfdAppState;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DETACH_WIFIDISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "wlan.wfd.autoconnect"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update()V

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGlobalEditDeviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mGlobalEditDeviceName:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->showInputMethod()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCanShake:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "wlan.wfd.pickerdialogontop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public showHelpDialog(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {v1, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v4, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v4}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b000f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b0275

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0b000a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setHoverPopupType(I)V

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public startScanWifiDisplays()V
    .locals 4

    const-string v0, "WifiDisplaySettings"

    const-string v1, "startScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    return-void
.end method

.method public stopScanWifiDisplays()V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "stopScanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanInProgress:Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mScanTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->stopScanWifiDisplays()V

    return-void
.end method

.method protected update()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "WifiDisplaySettings"

    const-string v3, "update"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->checkExceptionalCase()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    const-string v0, "WifiDisplaySettings"

    const-string v1, "group play is running!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f091b3c

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_display_certification_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mTurningWifiDisplayOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "update scanWifiDisplays"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startScanWifiDisplays()V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->applyState()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
