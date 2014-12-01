.class public Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mInvited:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mMultiConnectInProgress:Z

.field private static mMultiConnectionComplete:Z

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;


# instance fields
.field private customActionBarView:Landroid/view/View;

.field private doNotFinish:Z

.field private isFirstTime:Z

.field private isKmodelUI:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mButtonBar:Landroid/widget/RelativeLayout;

.field private mCancelConnectDialog:Landroid/app/AlertDialog;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsTablet:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMultiConnect:Z

.field private mMultiConnectClicked:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pCancel:Landroid/view/MenuItem;

.field private mP2pDone:Landroid/view/MenuItem;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanButton:Landroid/widget/Button;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mTalkback:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;

.field protected scanMenuDivider:Landroid/view/View;

.field protected scanMenuItem:Landroid/view/View;

.field protected scanMenuItemText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    sput-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$1200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/hardware/motion/MRListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    return v0
.end method

.method static synthetic access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$4300()Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object v0
.end method

.method static synthetic access$4302(Landroid/net/wifi/p2p/WifiP2pConfigList;)Landroid/net/wifi/p2p/WifiP2pConfigList;
    .locals 0

    sput-object p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    return p0
.end method

.method private addThisDevicePreference()V
    .locals 7

    const/16 v1, 0x9

    const/4 v6, 0x0

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x104003f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    const/16 v4, 0x2d

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    const/16 v3, 0xb

    if-le v0, v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->sDeviceTypeImages:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(I)V

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void

    :catch_0
    move-exception v3

    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse device type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private changeActionBarforK()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f02016f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v3, 0xe

    const/16 v2, 0xc

    const/4 v0, 0x0

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    xor-int/lit16 v2, v2, 0x80

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-object v0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "WifiP2pDevicePicker"

    const-string v3, "convertDevAddress - NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "WifiP2pDevicePicker"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private send()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090589

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$17;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$17;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "SAMSUNG_P2P"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "IS_INVITED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$18;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$18;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_1
.end method

.method private sendP2pSettingsStartedBroadcast(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.p2p.SETTINGS_STRATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "started"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setP2pMenu(I)V
    .locals 7

    const v6, 0x7f090560

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_6

    :cond_3
    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    move v0, v2

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_10

    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020170

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_f
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    :cond_11
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_12

    move v0, v2

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItemText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_12
    move v0, v1

    goto :goto_6

    :cond_13
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    move v0, v2

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_15

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_17
    move v0, v1

    goto :goto_7

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_1b

    :cond_18
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020172

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_19
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_8
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f09089d

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    const v3, 0x7f09089d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    :goto_9
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_8

    :cond_1c
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_1d

    move v0, v2

    :goto_a
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItemText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09089d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_1d
    move v0, v1

    goto :goto_a

    :cond_1e
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    move v0, v2

    :goto_b
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_20

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    move v1, v2

    :cond_21
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_22
    move v0, v1

    goto :goto_b

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f02016f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_d
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f090580

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_23
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_26

    :cond_24
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f02016f

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_25
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_c

    :cond_26
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_c

    :cond_27
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_28
    move v0, v2

    :goto_e
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_29

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    move v1, v2

    :cond_2a
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_d

    :cond_2b
    move v0, v1

    goto :goto_e

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_2f

    :cond_2c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f020169

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2d
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_f
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_10
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f090581

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    const v2, 0x7f090581

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2e
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2f
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_f

    :cond_30
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_31

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    move v0, v2

    :goto_11
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    move v0, v2

    :goto_12
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_10

    :cond_33
    move v0, v1

    goto :goto_11

    :cond_34
    move v0, v1

    goto :goto_12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$15;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f09052e

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedConfig:Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pConfigList;->getConfigList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090551

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f090550

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090583

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v9, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_5

    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v7, v10, :cond_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget-object v0, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v10, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_6
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v7, v11, :cond_7

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_7
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v7, :cond_9

    add-int/lit8 v1, v1, 0x1

    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_8
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_9

    iget-object v0, v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z

    if-eqz v4, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    if-nez v1, :cond_d

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    if-nez v3, :cond_e

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    add-int v4, v1, v3

    if-ne v4, v0, :cond_12

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v4, :cond_f

    if-ne v3, v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$16;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$16;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_f
    if-lez v1, :cond_10

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    :cond_10
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    :cond_11
    :goto_3
    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f09058b

    invoke-virtual {v0, v10, v1}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    :goto_4
    return-void

    :cond_12
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectionComplete:Z

    if-nez v0, :cond_11

    sput-boolean v10, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    goto :goto_3

    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_4
.end method

.method private showMultiConnectDevices()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    const v1, 0x7f090588

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    move v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private useCustomActionBar(Z)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_d

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x10

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuDivider:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItem:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v3, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v0, :cond_c

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_3
    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_4
    :goto_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItem:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    const/16 v0, 0x1a

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v3, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v4, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_4

    :cond_d
    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v3, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    const/16 v0, 0xa

    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v0, 0x7f09057d

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v4, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    :cond_11
    move v0, v2

    goto/16 :goto_5

    :cond_12
    move v1, v2

    goto/16 :goto_6

    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    const/4 v10, 0x0

    const v9, 0x7f0b00bb

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v5, :cond_0

    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "layout_inflater"

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v5, :cond_7

    const v5, 0x7f0402b1

    invoke-virtual {v2, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b0651

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b064f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b0652

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemText:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b0650

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemText:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b06dc

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuDivider:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b06dd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItem:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v8, 0x7f0b06de

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItemText:Landroid/widget/TextView;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->scanMenuItem:Landroid/view/View;

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0b01c0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    const v4, 0x7f090561

    :goto_4
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x41880000

    invoke-direct {v3, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    const v8, 0x7f0208b7

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    const/high16 v8, 0x3f800000

    const/high16 v9, 0x40400000

    const/high16 v10, -0x1000000

    invoke-virtual {v5, v8, v11, v9, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setForcedClick(Z)V

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v5, "WifiP2pDevicePicker"

    const-string v8, "Fragment not attached to Activity"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const v5, 0x7f0402b0

    invoke-virtual {v2, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    goto/16 :goto_3

    :cond_8
    sget-boolean v5, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v5, :cond_9

    const v4, 0x7f090581

    goto :goto_4

    :cond_9
    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v5, :cond_a

    const v4, 0x7f09089d

    :goto_6
    goto/16 :goto_4

    :cond_a
    const v4, 0x7f090560

    goto :goto_6

    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->changeActionBarforK()V

    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    const/4 v0, 0x5

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    iput-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    const-string v0, "available"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v9}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v9}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    const-string v0, "connected"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const-string v0, "busy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;

    const-wide/16 v2, 0x7530

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_1
    :goto_0
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$10;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$11;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$12;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    :cond_2
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    :cond_4
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v5, 0x7f09085a

    const/4 v4, 0x1

    const v7, 0x7f090859

    const/4 v0, 0x0

    if-ne p1, v4, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090560

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090582

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09055b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090578

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090559

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09056c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCancelConnectDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f090560

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v5, 0x7f09052b

    invoke-interface {p1, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v5, 0x7f090fed

    invoke-interface {p1, v1, v0, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    const v0, 0x7f090580

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0b01c0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_8

    :cond_1
    move v0, v2

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v5, 0x7f02016f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_1
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v0, :cond_13

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_2
    move v0, v2

    :goto_3
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_5
    move v0, v4

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v5, 0x7f020170

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v5, 0x7f02016f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    :goto_7
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_8
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    :goto_9
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_8

    :cond_11
    move v0, v1

    goto :goto_9

    :cond_12
    move v0, v1

    goto/16 :goto_3

    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pDone:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_14
    move v0, v3

    goto/16 :goto_5

    :cond_15
    const/4 v0, 0x4

    goto/16 :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0402b3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isKmodelUI:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mButtonBar:Landroid/widget/RelativeLayout;

    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-nez v1, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    goto :goto_1

    :sswitch_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isFirstTime:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->sendP2pSettingsStartedBroadcast(Z)V

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIsRegisteredMotionListener:Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->doNotFinish:Z

    goto :goto_1
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 10

    const v4, 0x7f090550

    const/4 v0, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v1, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "return, P2P is not enabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "no devices found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_1
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v3, 0x7f090552

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v2

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v4, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    :cond_7
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    :goto_4
    move v3, v1

    move v1, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    goto :goto_2

    :cond_9
    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-nez v4, :cond_b

    move v4, v5

    :goto_5
    if-eqz v4, :cond_a

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v4, v9, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v3, v3, 0x1

    iget-boolean v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    invoke-virtual {v4, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->setTalkback(Z)V

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v9, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_a
    move v0, v1

    move v1, v3

    goto :goto_4

    :cond_b
    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v4, v5, :cond_1b

    move v4, v5

    goto :goto_5

    :cond_c
    if-gtz v3, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_e

    :cond_d
    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    :cond_e
    if-lez v1, :cond_f

    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v3, 0x7f090551

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    sput-boolean v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v1, :cond_12

    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "I am GO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, ""

    move-object v1, v0

    :goto_7
    const-string v0, "WifiP2pDevicePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I am GC, my GO addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", converted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_15
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_16
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    :goto_9
    move v3, v0

    goto :goto_8

    :cond_17
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_9

    :cond_19
    move v0, v3

    goto :goto_9

    :cond_1a
    move-object v1, v0

    goto/16 :goto_7

    :cond_1b
    move v4, v2

    goto/16 :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09055d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_2
    :goto_1
    const-string v0, "WifiP2pDevicePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# of Selected Peers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v2, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sget v3, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v2, v3, :cond_8

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v2, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v2, :cond_c

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Lcom/android/settings/wifi/p2p/WifiP2pCustomCheckBox;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    :cond_c
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_d
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    :cond_e
    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectAll, # of Selected Peers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->sendP2pSettingsStartedBroadcast(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_P2P"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "IS_INVITED"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "IS_MULTICONNECT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v3, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z

    :cond_2
    sget-boolean v0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$13;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTalkback:Z

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$14;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
