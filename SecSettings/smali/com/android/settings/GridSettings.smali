.class public Lcom/android/settings/GridSettings;
.super Landroid/preference/PreferenceActivity;
.source "GridSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/grid/GridSettingsFragment$OnSetListner;
.implements Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GridSettings$HeaderAdapter;,
        Lcom/android/settings/GridSettings$NoHomeDialogFragment;,
        Lcom/android/settings/GridSettings$SettingsTabListener;,
        Lcom/android/settings/GridSettings$ViewPagerAdapter;,
        Lcom/android/settings/GridSettings$ScaleListner;
    }
.end annotation


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDirectSettingEnabler:Z

.field private static mIsFromSearch:Z

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static sIsEnableDockSettings:Z

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

.field private SETTINGS_FOR_KNOX:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private isExpanding:Z

.field private isGridView:Z

.field private isKioskContainer:Z

.field private listManager:Lcom/android/settings/HeaderListManager;

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDualFoldertype:Z

.field private mFifthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field mPhoneTabStyle:Z

.field private mPrivateModeSettingsValBeforeOnFocusChanged:I

.field private mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field private mSixthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mTabDev:Z

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevLength:I

.field private prevScreen:I

.field private viewTypeDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    sput-boolean v2, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    sput-boolean v2, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/android/settings/OneHandEditMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/android/settings/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/android/settings/toolbox/ToolboxList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings/AccountMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings/DockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "com.nttdocomo.android.docomoset.DocomoServiceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "com.android.settings.DCMHomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/settings/ToddlerModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/settings/ApplicationsSettingsVZW;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "com.android.settings.festivaleffect.FestivalEffectSettings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const/16 v0, 0x4b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/GridSettings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    new-instance v0, Lcom/android/settings/GridSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$1;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    iput v1, p0, Lcom/android/settings/GridSettings;->prevLength:I

    iput v1, p0, Lcom/android/settings/GridSettings;->mTetheredData:I

    new-instance v0, Lcom/android/settings/GridSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$2;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    iput v1, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    return-void

    :array_0
    .array-data 4
        0x7f0b074b
        0x7f0b074d
        0x7f0b074c
        0x7f0b074e
        0x7f0b0754
        0x7f0b074f
        0x7f0b0755
        0x7f0b075c
        0x7f0b0787
        0x7f0b0789
        0x7f0b0788
        0x7f0b078c
        0x7f0b07cb
        0x7f0b076e
        0x7f0b076b
        0x7f0b0025
        0x7f0b079c
        0x7f0b073c
        0x7f0b073e
        0x7f0b079a
        0x7f0b07d0
        0x7f0b0756
        0x7f0b0757
        0x7f0b0017
        0x7f0b0018
        0x7f0b075b
        0x7f0b079d
        0x7f0b077d
        0x7f0b078e
        0x7f0b0733
        0x7f0b0734
        0x7f0b07a4
        0x7f0b0798
        0x7f0b07a1
        0x7f0b0779
        0x7f0b0762
        0x7f0b07ce
        0x7f0b0751
        0x7f0b0761
        0x7f0b0764
        0x7f0b0792
        0x7f0b0771
        0x7f0b0773
        0x7f0b0774
        0x7f0b073a
        0x7f0b075e
        0x7f0b0767
        0x7f0b0769
        0x7f0b0778
        0x7f0b076a
        0x7f0b077c
        0x7f0b073b
        0x7f0b0019
        0x7f0b001a
        0x7f0b07b1
        0x7f0b07b2
        0x7f0b0782
        0x7f0b0013
        0x7f0b07a3
        0x7f0b0739
        0x7f0b001b
        0x7f0b0743
        0x7f0b0744
        0x7f0b0745
        0x7f0b0746
        0x7f0b0741
        0x7f0b0742
        0x7f0b0748
        0x7f0b077a
        0x7f0b0747
        0x7f0b0749
        0x7f0b0014
        0x7f0b074a
        0x7f0b0785
        0x7f0b07b3
    .end array-data

    :array_1
    .array-data 4
        0x7f0b074b
        0x7f0b074d
        0x7f0b075c
        0x7f0b0787
        0x7f0b0789
        0x7f0b0788
        0x7f0b078c
        0x7f0b0796
        0x7f0b07cb
        0x7f0b076e
        0x7f0b076b
        0x7f0b079c
        0x7f0b073c
        0x7f0b073e
        0x7f0b079a
        0x7f0b07d0
        0x7f0b0756
        0x7f0b079d
        0x7f0b077d
        0x7f0b0733
        0x7f0b0734
        0x7f0b07a4
        0x7f0b0798
        0x7f0b0779
        0x7f0b0751
        0x7f0b073b
        0x7f0b001a
        0x7f0b07b1
        0x7f0b07b2
        0x7f0b0782
        0x7f0b0013
        0x7f0b0783
        0x7f0b07a3
        0x7f0b0739
        0x7f0b07b4
        0x7f0b074a
        0x7f0b0785
        0x7f0b07b5
        0x7f0b07b9
        0x7f0b0771
        0x7f0b07b3
        0x7f0b07b7
        0x7f0b07b8
    .end array-data

    :array_2
    .array-data 4
        0x7f0b074c
        0x7f0b0754
        0x7f0b07c6
        0x7f0b074e
        0x7f0b0755
        0x7f0b07a1
        0x7f0b075c
        0x7f0b0781
        0x7f0b075e
        0x7f0b0767
        0x7f0b0760
        0x7f0b07c7
        0x7f0b0750
        0x7f0b07d7
        0x7f0b077e
        0x7f0b07c3
        0x7f0b0778
        0x7f0b0785
        0x7f0b07b6
        0x7f0b0017
        0x7f0b0018
        0x7f0b0773
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/GridSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/GridSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/GridSettings;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/GridSettings;Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/GridSettings;)Lcom/android/settings/HeaderListManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/GridSettings;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/GridSettings;)Lcom/android/settings/accounts/AuthenticatorHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mThirdPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFourthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFifthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/GridSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSixthPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/GridSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/GridSettings;)[Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/GridSettings;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/GridSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/GridSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/GridSettings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static callSearchMenu()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v0, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private highlightHeader(I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    const v12, 0x7f090b42

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    :cond_1
    if-eqz v0, :cond_4

    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    const-class v0, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v11, v9, v2

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v8, "account"

    aget-object v9, v9, v2

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    const-class v0, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/android/settings/GridSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$12;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_7

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    :cond_7
    return p2
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "docomoset is Disabled!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "docomoset is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeFavoriteIntent()Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/favorite/FavoriteMenuList;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f070067

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    const-string v2, "favoriteList"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v1
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b074d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b074f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b0751

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b0788

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b076a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b077d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b0737

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b078e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f0b079e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/GridSettings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v3}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    iget v1, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find parent activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-nez v0, :cond_7

    :goto_0
    const/4 v2, 0x0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v1

    move v3, v1

    move v4, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_98

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v8, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v5, 0x64

    if-lt v2, v5, :cond_8

    const/4 v2, 0x1

    move v6, v2

    :goto_2
    const v2, 0x7f0b07c8

    if-eq v8, v2, :cond_0

    const v2, 0x7f0b07cf

    if-ne v8, v2, :cond_9

    :cond_0
    invoke-static {p0, p1, v1}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8c

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_8c

    if-nez v6, :cond_8c

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    :cond_4
    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_99

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_99

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/android/settings/GridSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    if-eqz v2, :cond_6

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_6
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    :goto_5
    move v4, v1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0}, Lcom/android/settings/HeaderListManager;->getPosition()I

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_2

    :cond_9
    const v2, 0x7f0b074d

    if-ne v8, v2, :cond_a

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    const v2, 0x7f0b074c

    if-ne v8, v2, :cond_c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.oem.smartwifisupport"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check to see if target device support VOWIFI: + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_c
    const v2, 0x7f0b074e

    if-ne v8, v2, :cond_d

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_d
    const v2, 0x7f0b077a

    if-ne v8, v2, :cond_f

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.skyfire.browser.toolbar.att"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v9, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual {v5, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_e

    if-eqz v2, :cond_e

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    :cond_e
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Browser Bar is not found"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    const v2, 0x7f0b0750

    if-ne v8, v2, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-nez v2, :cond_13

    const/4 v2, 0x1

    move v5, v2

    :goto_6
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sget-object v9, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v9

    iput v9, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_10
    if-nez v5, :cond_12

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "ATT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_11
    const-string v2, "AIO"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_12
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_13
    const/4 v2, 0x0

    move v5, v2

    goto :goto_6

    :cond_14
    const v2, 0x7f0b074f

    if-ne v8, v2, :cond_15

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_15
    const v2, 0x7f0b0755

    if-ne v8, v2, :cond_18

    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_17

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_7
    :try_start_2
    invoke-interface {v5}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    if-eqz v2, :cond_1

    :cond_16
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    goto/16 :goto_3

    :cond_17
    const/4 v2, 0x0

    goto :goto_7

    :cond_18
    const v2, 0x7f0b079a

    if-ne v8, v2, :cond_19

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mBatteryPresent:Z

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_19
    const v2, 0x7f0b076a

    if-ne v8, v2, :cond_1b

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "shopdemo"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1a
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "verizonwireless_store_demo_mode"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1b
    const v2, 0x7f0b073d

    if-ne v8, v2, :cond_1d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    const-string v5, "ChinaNalSecurity"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_1c
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1d
    const v2, 0x7f0b0733

    if-ne v8, v2, :cond_1e

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/GridSettings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v4

    goto/16 :goto_3

    :cond_1e
    const v2, 0x7f0b073b

    if-ne v8, v2, :cond_1f

    invoke-direct {p0, v1}, Lcom/android/settings/GridSettings;->updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1f
    const v2, 0x7f0b078e

    if-ne v8, v2, :cond_23

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_22
    const v2, 0x7f091a23

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    :cond_23
    const v2, 0x7f0b0736

    if-ne v8, v2, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_24
    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.android.cloudagent"

    const/4 v9, 0x5

    invoke-virtual {v2, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_25
    const v2, 0x7f0b075c

    if-ne v8, v2, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_26
    const v2, 0x7f0b07ce

    if-ne v8, v2, :cond_29

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_27
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.nfc.hce"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_28
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_29
    const v2, 0x7f0b0799

    if-ne v8, v2, :cond_2a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2a
    const v2, 0x7f0b079e

    if-ne v8, v2, :cond_2b

    if-nez v7, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2b
    const v2, 0x7f0b07a0

    if-ne v8, v2, :cond_2e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Setting_MultipleSWUpdate"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Sprint Samsung FOTA devices"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.settings.SoftwareUpdateSettings"

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    :cond_2d
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Sprint Samsung non-FOTA devices"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.OMADM.SPRINTUPDATE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_2e
    const v2, 0x7f0b07a2

    if-ne v8, v2, :cond_30

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "VZW"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2f
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Verizon OMADM devices"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.OMADM.UPDATE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10200000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_3

    :cond_30
    const v2, 0x7f0b079f

    if-ne v8, v2, :cond_31

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v9, "com.sprint.dsa"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_8
    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :catch_4
    move-exception v2

    const/4 v2, 0x0

    goto :goto_8

    :cond_31
    const v2, 0x7f0b0734

    if-ne v8, v2, :cond_32

    const-string v2, "no_modify_accounts"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v6, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_32
    const v2, 0x7f0b077c

    if-ne v8, v2, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_33
    const v2, 0x7f0b001d

    if-ne v8, v2, :cond_35

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_34
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_35
    const v2, 0x7f0b073a

    if-ne v8, v2, :cond_37

    const-string v2, "DCM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-direct {p0}, Lcom/android/settings/GridSettings;->isDocomoSettingsDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_36
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_37
    const v2, 0x7f0b0769

    if-ne v8, v2, :cond_38

    const-string v2, "DCM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_38
    const v2, 0x7f0b0014

    if-ne v8, v2, :cond_39

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_39
    const v2, 0x7f0b0746

    if-ne v8, v2, :cond_3b

    const-string v2, "KDI"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3a
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3b
    const v2, 0x7f0b0021

    if-eq v8, v2, :cond_1

    const v2, 0x7f0b07b0

    if-ne v8, v2, :cond_3c

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3c
    const v2, 0x7f0b0790

    if-ne v8, v2, :cond_3e

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v9, "none"

    invoke-virtual {v2, v5, v9}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "theme"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_switch"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_3d
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3e
    const v2, 0x7f0b0791

    if-ne v8, v2, :cond_3f

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_3f
    const v2, 0x7f0b0774

    if-ne v8, v2, :cond_40

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_40
    const v2, 0x7f0b0757

    if-ne v8, v2, :cond_41

    const-string v2, "CTC"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_41
    const v2, 0x7f0b0017

    if-ne v8, v2, :cond_42

    const-string v2, "CDMA"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_42
    const v2, 0x7f0b0018

    if-ne v8, v2, :cond_43

    const-string v2, "GSM"

    invoke-static {v2}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_43
    const v2, 0x7f0b0773

    if-ne v8, v2, :cond_44

    const-string v2, "ro.multisim.simslotcount"

    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_44
    const v2, 0x7f0b075b

    if-ne v8, v2, :cond_45

    const-string v2, "CTC"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_45
    const v2, 0x7f0b001e

    if-ne v8, v2, :cond_46

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_46
    const v2, 0x7f0b0759

    if-ne v8, v2, :cond_48

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_47
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_48
    const v2, 0x7f0b075a

    if-ne v8, v2, :cond_4a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_49
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4a
    const v2, 0x7f0b0015

    if-ne v8, v2, :cond_4b

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4b
    const v2, 0x7f0b0748

    if-ne v8, v2, :cond_4d

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "XAR"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "XAC"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_switch"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_splanner"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_4c
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4d
    const v2, 0x7f0b073f

    if-ne v8, v2, :cond_4e

    :try_start_5
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.orca.easysignup"

    const/16 v9, 0x80

    invoke-virtual {v2, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_4e
    const v2, 0x7f0b0747

    if-ne v8, v2, :cond_51

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "XAR"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "XAC"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4f
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_switch"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "easy_mode_splanner"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_50
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_51
    const v2, 0x7f0b001a

    if-ne v8, v2, :cond_52

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_52
    const v2, 0x7f0b0019

    if-ne v8, v2, :cond_53

    const-string v2, "ATT"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_53
    const v2, 0x7f0b07a3

    if-ne v8, v2, :cond_54

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_54
    const v2, 0x7f0b0754

    if-ne v8, v2, :cond_57

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_55

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v2, :cond_56

    :cond_55
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_RIL_BlockEnableSmartBonding"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {}, Lcom/android/settings/Utils;->isTFGBlockEnableSmartBonding()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_56
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_57
    const v2, 0x7f0b0013

    if-ne v8, v2, :cond_59

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_58
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_59
    const v2, 0x7f0b0782

    if-ne v8, v2, :cond_5b

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5a
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5b
    const v2, 0x7f0b0783

    if-ne v8, v2, :cond_5d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5c
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5d
    const v2, 0x7f0b001b

    if-ne v8, v2, :cond_5e

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5e
    const v2, 0x7f0b075e

    if-ne v8, v2, :cond_62

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_60

    :cond_5f
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    :cond_60
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_61
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_62
    const v2, 0x7f0b0767

    if-ne v8, v2, :cond_63

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_63
    const v2, 0x7f0b07b6

    if-ne v8, v2, :cond_67

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_65

    :cond_64
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    :cond_65
    const v2, 0x7f090e00

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    :cond_66
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_67
    const v2, 0x7f0b07ba

    if-ne v8, v2, :cond_68

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_68
    const v2, 0x7f0b07b9

    if-ne v8, v2, :cond_69

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_69
    const v2, 0x7f0b0761

    if-ne v8, v2, :cond_6a

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6a
    const v2, 0x7f0b0764

    if-ne v8, v2, :cond_6b

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6b
    const v2, 0x7f0b0765

    if-ne v8, v2, :cond_6c

    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.android.app.tmserver"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :catch_6
    move-exception v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_6c
    const v2, 0x7f0b0788

    if-ne v8, v2, :cond_6d

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_6d
    const v2, 0x7f0b0749

    if-ne v8, v2, :cond_70

    const-string v2, "com.vlingo.midas.gui.ConversationActivity"

    sget-object v5, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_9a

    const-string v2, "com.vlingo.midas.settings.SettingsScreen"

    move-object v5, v2

    :goto_9
    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragment of svoice : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6e

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v9, "com.vlingo.midas"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v5, "SEC_FLOATING_FEATURE_SVOICE_CONFIG_FOR_GEAR"

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6f
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_70
    const v2, 0x7f0b077e

    if-ne v8, v2, :cond_73

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "shopdemo"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_71

    const/4 v5, 0x1

    if-ne v2, v5, :cond_72

    :cond_71
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_72
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "verizonwireless_store_demo_mode"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_73
    const v2, 0x7f0b0751

    if-ne v8, v2, :cond_74

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_74
    const v2, 0x7f0b079d

    if-ne v8, v2, :cond_75

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_75
    const v2, 0x7f0b0792

    if-ne v8, v2, :cond_77

    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_76
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0914df

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    :cond_77
    const v2, 0x7f0b078f

    if-ne v8, v2, :cond_78

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "shopdemo"

    const/4 v9, 0x0

    invoke-static {v2, v5, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_78
    const v2, 0x7f0b0741

    if-ne v8, v2, :cond_7a

    const-string v2, "DCM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_79
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7a
    const v2, 0x7f0b0770

    if-ne v8, v2, :cond_7b

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7b
    const v2, 0x7f0b0742

    if-ne v8, v2, :cond_7c

    const-string v2, "DCM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_7c
    const v2, 0x7f0b07b5

    if-ne v8, v2, :cond_7d

    const-string v2, "com.android.settings.powersavingmode.PowerSavingModeSettings"

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7d
    const v2, 0x7f0b0787

    if-ne v8, v2, :cond_7f

    :try_start_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x3

    if-le v2, v5, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v2, :cond_7e

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_7e
    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v9, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v2

    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Sprint Touch is not found"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7f
    const v2, 0x7f0b074a

    if-ne v8, v2, :cond_80

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_80
    const v2, 0x7f0b07b4

    if-ne v8, v2, :cond_81

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_81
    const v2, 0x7f0b0739

    if-ne v8, v2, :cond_82

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_82
    const v2, 0x7f0b073c

    if-ne v8, v2, :cond_83

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_83
    const v2, 0x7f0b073e

    if-ne v8, v2, :cond_84

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_84
    const v2, 0x7f0b0747

    if-ne v8, v2, :cond_85

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_85
    const v2, 0x7f0b0740

    if-ne v8, v2, :cond_86

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_86
    const v2, 0x7f0b0743

    if-ne v8, v2, :cond_87

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_87
    const v2, 0x7f0b0744

    if-ne v8, v2, :cond_88

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_88
    const v2, 0x7f0b0745

    if-ne v8, v2, :cond_89

    const-string v2, "VZW"

    sget-object v5, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_89
    const v2, 0x7f0b0778

    if-ne v8, v2, :cond_8a

    sget-boolean v2, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_8a
    const v2, 0x7f0b07b2

    if-ne v8, v2, :cond_8b

    invoke-static {}, Lcom/android/settings/Utils;->isMotionAndControlsTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f091b98

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_3

    :cond_8b
    const v2, 0x7f0b0016

    if-ne v8, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_8c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8d

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8d

    if-eqz v6, :cond_8d

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-nez v2, :cond_8d

    iget-object v2, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    invoke-static {v2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_8d

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_8d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8e

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8e

    if-eqz v6, :cond_8e

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/settings/GridSettings;->SETTINGS_FOR_KNOX:[I

    invoke-static {v2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_8e

    iget-object v2, p0, Lcom/android/settings/GridSettings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    invoke-static {v2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_8e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8f

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8f

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_8f

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_8f
    const v2, 0x7f0b075f

    if-ne v8, v2, :cond_91

    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sequent.controlpanel"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_90

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_90

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_2

    :cond_90
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Sprint Touch is not found"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_91
    const v2, 0x7f0b0785

    if-ne v8, v2, :cond_92

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_92
    const v2, 0x7f0b07b3

    if-ne v8, v2, :cond_93

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_93
    const v2, 0x7f0b0026

    if-ne v8, v2, :cond_95

    :try_start_9
    sget-object v2, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v2, :cond_94

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    :cond_94
    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const-string v5, "com.samsung.helphub"

    const-string v6, "com.samsung.helphub.HelpHubActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const v5, 0x10008000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_4

    :catch_9
    move-exception v2

    sget-object v2, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v5, "NameNotFoundException - Help"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_95
    const v2, 0x7f0b078a

    if-ne v8, v2, :cond_96

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_96
    const v2, 0x7f0b076c

    if-ne v8, v2, :cond_2

    const-string v2, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    if-nez v2, :cond_2

    :cond_97
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_98
    return-void

    :cond_99
    move v1, v4

    goto/16 :goto_5

    :cond_9a
    move-object v5, v2

    goto/16 :goto_9

    :cond_9b
    move v3, v1

    move v4, v2

    goto/16 :goto_1
.end method

.method private updateHomeSettingHeaders(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "home_prefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "do_show"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    sget-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/GridSettings;->sShowNoHomeNotice:Z

    invoke-static {p0}, Lcom/android/settings/GridSettings$NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    :cond_3
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "do_show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public displayGrid(I)V
    .locals 3

    iput p1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    :cond_0
    new-instance v1, Lcom/android/settings/grid/GridSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/grid/GridSettingsFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public getDBValue(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGridType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v3, ":android:show_fragment"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    const-string v3, "intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getOptionDialogValue(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRealValue(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSelectValue(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFragmentClass:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public isGiditemChecked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/settings/GridSettings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f070068

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x1610

    const/4 v2, 0x0

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x160f

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    const-string v0, "Settings"

    const-string v1, "Search direct back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    sput-boolean v2, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput v1, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    const v8, 0x7f070067

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v8, p1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    :cond_0
    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneTabStyle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listManager.getPosition : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v4}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v0

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v2, "show"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v4}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v4, :cond_7

    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v8, v4}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-direct {p0, v4, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    iget-object v5, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v5, v1}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v5, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v6, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_12

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_6

    new-instance v4, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_6
    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mTabDev:Z

    :cond_7
    iget-object v4, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/GridSettings;->mTabDev:Z

    if-eq v0, v4, :cond_8

    new-instance v4, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mTabDev:Z

    :cond_8
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    new-instance v0, Lcom/android/settings/HeaderListManager;

    invoke-direct {v0, p0}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_tab_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v4

    if-ne v4, v7, :cond_9

    add-int/lit8 v0, v0, -0x1

    :cond_9
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_a
    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v2

    if-ne v2, v7, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v8, p1}, Lcom/android/settings/GridSettings;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/GridSettings;->updateHeaderList(Ljava/util/List;Z)V

    :cond_c
    :goto_1
    if-nez p1, :cond_15

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/android/settings/GridSettings;->prevLength:I

    if-eq v2, v0, :cond_16

    move v2, v3

    :goto_3
    sget-object v4, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prevLength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/GridSettings;->prevLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "afterLength : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/settings/GridSettings;->prevLength:I

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-nez v0, :cond_17

    const/16 v0, 0x64

    :goto_4
    iget-boolean v4, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/android/settings/GridSettings;->prevScreen:I

    if-ne v4, v0, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/settings/GridSettings;->displayGrid(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    move v2, v1

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v6, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v6, 0x7f0b0025

    cmp-long v4, v4, v6

    if-nez v4, :cond_19

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_f
    :goto_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_search_bundle"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "extra_from_search"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_10
    :goto_7
    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    :cond_11
    return-void

    :cond_12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_5

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v4

    if-ne v4, v7, :cond_5

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f091b92

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_0

    :cond_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_14

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v5

    if-ne v5, v7, :cond_14

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    new-instance v5, Lcom/android/settings/GridSettings$SettingsTabListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f091b92

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;I)V

    goto/16 :goto_0

    :cond_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_5

    invoke-virtual {v2}, Landroid/app/ActionBar;->getNavigationItemCount()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->removeTabAt(I)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->loadFavoriteList(Ljava/util/List;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v3}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0, v7}, Lcom/android/settings/HeaderListManager;->setPosition(I)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/HeaderListManager;->getHeaderList(Ljava/util/List;Ljava/util/HashMap;)V

    goto/16 :goto_1

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto/16 :goto_2

    :cond_16
    move v2, v1

    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v0}, Lcom/android/settings/HeaderListManager;->getPosition()I

    move-result v0

    goto/16 :goto_4

    :cond_18
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_19
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0752

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b07c0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1a

    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b0753

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    :cond_1a
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_7

    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    :cond_1c
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "send split"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "settings:ui_options"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v2, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x2

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/GridSettings;->populateKnoxCustomSettingsMap()V

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "settings:ui_options"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "settings:ui_options"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setUiOptions(I)V

    :cond_0
    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "prevScreen"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "prevScreen"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_1
    sput-object p0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/Utils;->isEnableDockSettings(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/GridSettings;->sIsEnableDockSettings:Z

    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v8}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mDualFoldertype:Z

    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "settings_listui"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string v0, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "settings_gridui"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "settings_gridui"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_10

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "listManager is init!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/HeaderListManager;

    invoke-direct {v0, p0}, Lcom/android/settings/HeaderListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_2

    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->getMetaData()V

    iput-boolean v1, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->isGridView:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/ScaleGestureDetector;

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/settings/GridSettings$ScaleListner;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$ScaleListner;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-direct {v0, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/settings/GridSettings;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar_container"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f091b92

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f090e05

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f091980

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f091981

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f091982

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    new-instance v4, Lcom/android/settings/GridSettings$SettingsTabListener;

    invoke-direct {v4, p0, v8}, Lcom/android/settings/GridSettings$SettingsTabListener;-><init>(Lcom/android/settings/GridSettings;Lcom/android/settings/GridSettings$1;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f0913b9

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v4, 0x7f091984

    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v3, 0x7f0900c1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-eqz v0, :cond_6

    const v0, 0x7f040245

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/settings/GridSettings$ViewPagerAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/GridSettings$ViewPagerAdapter;-><init>(Lcom/android/settings/GridSettings;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/android/settings/GridSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/GridSettings$3;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings/GridSettings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_7
    if-eqz p1, :cond_8

    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_8
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/GridSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/GridSettings$4;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {p0, v0, v8, v3}, Landroid/preference/PreferenceActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_from_search"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    sget-boolean v3, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/android/settings/GridSettings;->mIsFromSearch:Z

    iput-boolean v3, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    const-string v3, "extra_header_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-string v3, "extra_setting_value"

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    const-string v3, "extra_fragment_bundle_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    const-string v3, "extra_second_fragment_bundle_key"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_c

    const-string v3, "SettingsSearch"

    iget-object v4, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v5, "extra_parent_preference_key"

    const-string v6, "None"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string v3, "extra_depth_counter_key"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    iget v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    sget v0, Lcom/android/settings/GridSettings;->mSearchSettingValue:I

    if-eq v0, v9, :cond_11

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/settings/GridSettings;->mDirectSettingEnabler:Z

    sget-wide v3, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    const-wide/32 v5, 0x7f0b0749

    cmp-long v0, v3, v5

    if-nez v0, :cond_e

    const-string v0, "com.vlingo.midas.gui.ConversationActivity"

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v1, :cond_d

    const-string v0, "com.vlingo.midas.settings.SettingsScreen"

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.vlingo.midas"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_e
    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while setting ActionBar layout direction :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    move v0, v2

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "com.android.settings.GridSettings"

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.providers.settingsearch"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    const v1, 0x7f090629

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :cond_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForSPR()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0xc9

    const v1, 0x7f090034

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/16 v0, 0xca

    const v1, 0x7f090038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/16 v0, 0xcc

    const v1, 0x7f091461

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020256

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/GridSettings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    :cond_0
    sget-object v1, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSGD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   isExpanding : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isInScaleProgress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->isExpanding:Z

    if-nez v0, :cond_3

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0027

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/GridSettings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mGridSettingsFragment:Lcom/android/settings/grid/GridSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/grid/GridSettingsFragment;->clearFocus()V

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0734

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->highlightHeader(I)V

    :goto_1
    return-void

    :cond_0
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b07a1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0017

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0018

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0773

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->isKioskContainer:Z

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NetworkManagement"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_3
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v4, 0x7f0b0016

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.bst.airmessage"

    const-string v5, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    const-string v1, "S View cover attached"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    iput-object p1, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/GridSettings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/GridSettings;->showDialog()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "CQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/GridSettings;->makeFavoriteIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/settings/GridSettings;->callSearchMenu()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:category"

    const-string v2, "important_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ActivityNotFoundException : com.samsung.helphub.HELP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:categoryid"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v3, v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    const-string v3, "com.android.settings.GridSettings"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->pause()V

    :cond_5
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v3, 0x7f090635

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    const v3, 0x7f0901f6

    goto :goto_0

    :cond_2
    const v3, 0x7f0901f4

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0xcb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->listManager:Lcom/android/settings/HeaderListManager;

    invoke-virtual {v2}, Lcom/android/settings/HeaderListManager;->getFavoriteCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/android/settings/GridSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v2, v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    new-instance v0, Lcom/android/settings/GridSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/GridSettings$11;-><init>(Lcom/android/settings/GridSettings;)V

    iput-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settings/GridSettings$HeaderAdapter;->resume()V

    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ActivityName"

    const-string v2, "com.android.settings.GridSettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IconName"

    const-string v2, "Search;Edit quick settings;"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.Favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings.Search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x3

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/GridSettings;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    sget-object v1, Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/GridSettings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mPhoneTabStyle:Z

    if-nez v0, :cond_0

    iput-object v5, p0, Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v5, p0, Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/settings/GridSettings$HeaderAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/GridSettings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/GridSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 10

    const v9, 0x7f090033

    const v8, 0x7f090032

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_gridui"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getOptionDialogValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$5;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/GridSettings$5;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$7;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/GridSettings$7;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_1
    const v1, 0x7f0901ba

    new-instance v2, Lcom/android/settings/GridSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/GridSettings$9;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/GridSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/GridSettings$10;-><init>(Lcom/android/settings/GridSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    const/high16 v2, 0x7f0a0000

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$6;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/GridSettings$6;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string v2, "GRIDLIST_SIMPLE"

    const-string v3, "GRIDLIST_SIMPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ATT"

    sget-object v3, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TMB"

    sget-object v3, Lcom/android/settings/GridSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1}, Lcom/android/settings/GridSettings;->getSelectValue(I)I

    move-result v3

    new-instance v4, Lcom/android/settings/GridSettings$8;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/GridSettings$8;-><init>(Lcom/android/settings/GridSettings;I)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_3

    const-string v0, "SettingsSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings , mSearchDepthCounter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "extra_from_search"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/GridSettings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x160f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v3, p0, Lcom/android/settings/GridSettings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_2

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/GridSettings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/GridSettings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/GridSettings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/GridSettings;->mOpenSearchHierarchy:Z

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/GridSettings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
