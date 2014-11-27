.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field public static UseMultiWindow:Z

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field protected MESSAGE_DELAY:I

.field private isDeviceLockTime:Z

.field private isKioskContainer:Z

.field private isSecuredLock:Z

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

.field private mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerWithSmartRotation:Landroid/preference/Preference;

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

.field private mAutoLockmode:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mClearfont:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mContextualPage:Landroid/preference/SwitchPreferenceScreen;

.field protected mContextualPageUncheckerHandler:Landroid/os/Handler;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDivider:Landroid/view/View;

.field mDualFolderType:Z

.field private mEditScreenCapture:Landroid/preference/CheckBoxPreference;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSize:Lcom/android/settings/FontSizeListPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowModeObserver:Landroid/database/ContentObserver;

.field private mMultiWindowPref:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificationEdit:Landroid/preference/PreferenceScreen;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mQuickLaunchPreference:Landroid/preference/ListPreference;

.field private mReadingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mReadingModeObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenCategory:Landroid/preference/PreferenceCategory;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartScreen:Landroid/preference/PreferenceScreen;

.field private mSmartScreenGuideDialog:Landroid/app/AlertDialog;

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field mSupportFolderType:Z

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0579
        0x7f0b057a
    .end array-data

    :array_1
    .array-data 4
        0x7f091296
        0x7f091297
        0x7f091298
        0x7f091299
        0x7f09129a
    .end array-data

    :array_2
    .array-data 4
        0x7f091296
        0x7f091297
        0x7f091298
        0x7f091299
        0x7f09129a
        0x7f0919c2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    iput v1, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DisplaySettings$22;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$22;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/DisplaySettings$25;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$25;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0206fd
        0x7f0206fe
        0x7f0206ff
        0x7f020700
    .end array-data

    :array_1
    .array-data 4
        0x7f0206ef
        0x7f0206f0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/DisplaySettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0    # Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0    # Lcom/android/settings/DisplaySettings;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private checkFlashannotateExists()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.spen.flashannotate"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "DisplaySettings"

    const-string v1, "Screen capture Edit app doesn\'t exists."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    const v2, 0x927c0

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_d

    int-to-long v0, v2

    move-wide v5, v0

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    :goto_2
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_4
    array-length v9, v1

    if-ge v2, v9, :cond_5

    aget-object v9, v1, v2

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-gtz v11, :cond_3

    aget-object v11, v0, v2

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v11, v1, v2

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-nez v11, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-gez v9, :cond_3

    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    move v4, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eq v4, v2, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v7, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    const v0, 0x7f0912fa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    int-to-long v2, v1

    cmp-long v0, v2, v5

    if-gtz v0, :cond_a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revisedValues.size() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v5, v2

    const-string v0, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-lez v0, :cond_8

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v5, v0

    if-gez v0, :cond_8

    const v0, 0x7f0912fa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_b

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const-string v0, "DisplaySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_d
    move-wide v5, v0

    goto/16 :goto_1
.end method

.method private getLedIndicator()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    div-long v2, v0, v4

    rem-long v4, v0, v4

    const-string v0, ""

    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000a

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11000b

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isEnabledScreenReaderService()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sget-object v1, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.google.android.marvin.talkback"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_stay_noti"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f091292

    const v0, 0x7f0912ee

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090836

    new-instance v2, Lcom/android/settings/DisplaySettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$24;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$23;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_pause_noti"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f09129f

    const v0, 0x7f0912ec

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    return-void
.end method

.method private removeDisplayPreference(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private removeEnabledScreenReaderValue()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v0, :cond_1

    const-string v3, "com.google.android.marvin.talkback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setLedIndicator(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_charing"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_low_battery"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_missed_event"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private showTalkBackDisablePopup()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090f34

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f33

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$21;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$21;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/DisplaySettings$20;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$20;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$19;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$19;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f09099c

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const v0, 0x7f09099d

    goto :goto_2
.end method

.method private updateAccelerometerRotationSecondCheckbox()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private updateAnimation()V
    .locals 4

    const/16 v3, 0x66

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    :cond_1
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    add-int/lit8 v5, v0, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateScreenModeSummary()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f091bb6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f091b9e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f091bb7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f091bb8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getLedIndicator()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display_battery_percentage"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "edit_after_screen_capture"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_key_light"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_night_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 11

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-string v0, ""

    move-wide p1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v1, v2, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-eqz v3, :cond_11

    cmp-long v3, v4, v1

    if-gez v3, :cond_f

    :goto_2
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v1, :cond_10

    cmp-long v1, p1, v4

    if-lez v1, :cond_10

    const v1, 0x7f090089

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-nez v0, :cond_3

    cmp-long v0, p1, v4

    if-gtz v0, :cond_3

    const v0, 0x7f090633

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v7, :cond_4

    array-length v0, v7

    if-nez v0, :cond_5

    :cond_4
    const-string v0, ""

    move-wide p1, v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    array-length v9, v8

    if-ge v0, v9, :cond_7

    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v9, p1, v9

    if-ltz v9, :cond_6

    move v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    array-length v0, v7

    if-eqz v0, :cond_8

    array-length v0, v8

    if-nez v0, :cond_9

    :cond_8
    const v0, 0x7f090633

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v2

    goto/16 :goto_1

    :cond_9
    aget-object v0, v8, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    cmp-long v0, v4, p1

    if-gez v0, :cond_a

    const-string v0, "DisplaySettings"

    const-string v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f090633

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v4

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_d

    cmp-long v0, p1, v4

    if-ltz v0, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_d

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_c

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/String;

    :goto_5
    aget-object v1, v8, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    goto/16 :goto_1

    :cond_c
    const v0, 0x7f090633

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v7, v7, v1

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_e

    const v0, 0x7f090633

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const v0, 0x7f090633

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-wide p1, v4

    goto/16 :goto_1

    :cond_f
    move-wide v4, v1

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    move-wide v4, v1

    goto/16 :goto_2
.end method

.method private updateTouchKeyLightSummary()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createSmartScreenGuideDialog(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showSmartScreenGuideDialog()V

    :cond_0
    return-void
.end method

.method floatToIndex(F)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    add-int/lit8 v0, v1, -0x1

    :goto_2
    return v0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_3
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public isContextualAllOptionDisabled()Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "contextual_page_s_pen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "contextual_page_earphone"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "contextual_page_audio_dock"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "contextual_page_car_cradle"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "contextual_page_desk_cardle"

    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "contextual_page_roaming"

    invoke-static {v0, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v4, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-nez v8, :cond_1

    move v0, v1

    :goto_0
    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v1, :cond_0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    :goto_2
    const-string v0, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EarphoneScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CarCardleScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DeskCradleScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RoamingScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f0915ce

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    const-string v0, "header_display_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_35

    move v1, v2

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v4, 0x64

    if-lt v0, v4, :cond_36

    move v4, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    const-string v0, "key_simple_led_indicator_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "settings_listui"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "led_indicator_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "key_simple_led_indicator_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    const-string v0, "onehand_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "onehand_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-eqz v4, :cond_5

    const-string v0, "onehand_operation_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "onehand_operation_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v0, "contextualpage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    const-string v0, "display_screen_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "display_advanced_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    :goto_4
    const-string v0, "notification_panel_edit"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationEdit:Landroid/preference/PreferenceScreen;

    const-string v0, "screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v0

    if-ne v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "contextual_page"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "is_secured_lock"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3a

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "com.sec.feature.folder_type"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :goto_8
    const-string v0, "reading_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "reading_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "screensaver"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x111004c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v4, :cond_3e

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    :goto_9
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/BrightnessPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    if-eqz v0, :cond_3f

    if-eqz v4, :cond_3f

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    :goto_a
    const-string v0, "clear_font"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    const-string v0, "persist.sys.font_clarity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "DisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mClearfont_check_status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persist.sys.font_clarity"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const-string v6, "Direct"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDirect : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "smart_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "settings_listui"

    invoke-static {v0, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_41

    :cond_11
    :goto_c
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "features_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "smart_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_12
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BrightnessPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    if-eqz v4, :cond_13

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    if-nez v0, :cond_13

    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_13
    const-string v0, "screen_off_timeout"

    const-wide/16 v6, 0x7530

    invoke-static {v5, v0, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f0a0020

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f0a0021

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    invoke-direct {p0, v6, v7}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    :cond_15
    if-nez v1, :cond_16

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "display_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_18
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    :goto_d
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const-string v0, "wifi_display"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const-string v0, "touch_key_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v2, :cond_45

    :goto_e
    const-string v0, "power_saving_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v0, "power_saving_mode"

    invoke-static {v5, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_46

    move v0, v2

    :goto_f
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "screen_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const v1, 0x7f040205

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    :cond_1a
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1b
    const-string v0, "auto_adjust_touch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    const-string v0, "auto_adjust_touch"

    invoke-static {v5, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_47

    move v0, v2

    :goto_10
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "quick_launch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    const-string v0, "quick_launch_app"

    invoke-static {v5, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_48

    move v0, v2

    :goto_11
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-nez v0, :cond_1c

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "p4note"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "more_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1f
    const-string v0, "accelerometer_second"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    const-string v0, "sub_lcd_auto_lock"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    const-string v0, "sub_lcd_auto_lock"

    invoke-static {v5, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_49

    move v0, v2

    :goto_12
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "key_backlight"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, "key_backlight_timeout"

    const/16 v6, 0xbb8

    invoke-static {v5, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "key_night_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const-string v1, "key_night_mode"

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4a

    move v1, v2

    :goto_13
    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_4b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0915d9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    :goto_14
    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getAvailableMultiInstanceCnt()I

    move-result v0

    const v1, 0x7f09198b

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_20
    new-instance v0, Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v0, v1, v5}, Lcom/android/settings/MultiWindowPrefEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v0

    if-nez v0, :cond_21

    sput-boolean v3, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    :cond_21
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-nez v0, :cond_23

    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_22
    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    const-string v0, "edit_screen_capture"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EDIT_AFTER_SCREEN_CAPTURE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->checkFlashannotateExists()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    if-eqz v4, :cond_26

    :cond_25
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_26
    :goto_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "general"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "wallpaper"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "led_indicator_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "notification_panel_edit"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "key_multi_window"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "screen_category"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "accelerometer_second"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "sub_lcd_auto_lock"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "features_category"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "smart_screen"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "key_font"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "MONOTYPE"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "font_size"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "clear_font"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "more_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "quick_launch"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "key_night_mode"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "key_backlight"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "auto_adjust_touch"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "notification_pulse"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "wifi_display"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "header_display_multi_window"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    :cond_27
    :goto_16
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_28
    const-string v0, "display_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "header_display_multi_window"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "general"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "wallpaper"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "notification_panel_edit"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "screen_category"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "key_font"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "MONOTYPE"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "font_size"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "more_settings"

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :goto_17
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v4, :cond_2a

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    if-nez v0, :cond_2a

    :cond_29
    const-string v0, "font_menu"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2a
    const-string v0, "black_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_2b

    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_parent_preference_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    if-ne v1, v2, :cond_51

    :goto_18
    const-string v1, "screensaver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_2b
    :goto_19
    return-void

    :cond_2c
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2d
    const-string v0, "header_display_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "onehand_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "onehand_operation_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_2e
    :goto_1a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v4, "none"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_2f
    const-string v0, "theme_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "onehand_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    :cond_31
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_32
    const-string v0, "onehand_operation_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1a

    :cond_33
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_34
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    :cond_35
    move v1, v3

    goto/16 :goto_1

    :cond_36
    move v4, v3

    goto/16 :goto_2

    :cond_37
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_38

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "led_indicator_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_38
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "key_simple_led_indicator_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_39
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    :cond_3a
    move v0, v3

    goto/16 :goto_5

    :cond_3b
    move v0, v3

    goto/16 :goto_6

    :cond_3c
    move v0, v3

    goto/16 :goto_7

    :cond_3d
    const-string v0, "accelerometer_with_smart_rotation"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3e
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9

    :cond_3f
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    goto/16 :goto_a

    :cond_40
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_b

    :cond_41
    const-string v0, "features_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v6, "features_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_42
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    :cond_43
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v0, "notification_light_pulse"

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_44

    move v0, v2

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    const-string v0, "DisplaySettings"

    const-string v1, "notification_light_pulse not found"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_44
    move v0, v3

    goto :goto_1b

    :cond_45
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    :cond_46
    move v0, v3

    goto/16 :goto_f

    :cond_47
    move v0, v3

    goto/16 :goto_10

    :cond_48
    move v0, v3

    goto/16 :goto_11

    :catch_1
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v1, v6, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto/16 :goto_11

    :cond_49
    move v0, v3

    goto/16 :goto_12

    :cond_4a
    move v1, v3

    goto/16 :goto_13

    :cond_4b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-nez v1, :cond_4c

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4c
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_14

    :cond_4d
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    :cond_4e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "header_display_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    :cond_4f
    const-string v0, "key_multi_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    :cond_50
    const-string v0, "smartscreen_stay"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "smartscreen_pause"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "font_menu"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_51
    move v2, v3

    goto/16 :goto_18

    :cond_52
    const-string v1, "reading_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_19
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v1, 0x0

    const v5, 0x104000a

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0401ae

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b0195

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09007e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/DisplaySettings$11;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$13;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/DisplaySettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$12;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d1a

    new-instance v2, Lcom/android/settings/DisplaySettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$14;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "screen_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DisplaySettings"

    const-string v1, "isInDefaultTimeoutList = true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_rollback"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v8, v0, v2

    if-eqz v8, :cond_1f

    cmp-long v8, v0, v4

    if-gez v8, :cond_4

    :goto_3
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentDeviceLockTimeout: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    int-to-long v2, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showScreenTimeDialog()V

    :cond_2
    :goto_4
    return v6

    :catch_0
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    move-wide v0, v4

    goto :goto_3

    :cond_5
    const-string v2, "font_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v2, v3, :cond_9

    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v3, :cond_9

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_font_noti"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v0, v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_4

    :cond_9
    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v2, v3, :cond_7

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ge v0, v2, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "large_font"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    const-string v2, "touch_key_light"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_key_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v2, "could not persist Touch key light setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_b
    const-string v2, "quick_launch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_launch_app"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "DisplaySettings"

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED is broadcasted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v2, "could not persist quick launch setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_c
    const-string v2, "key_backlight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v2, "could not persist key backlight setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_d
    const-string v2, "contextualpage_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v6

    :goto_7
    if-ne v0, v6, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_e
    move v0, v1

    goto :goto_7

    :cond_f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_10

    const-string v1, "changed"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "contextual_page"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_10
    const-string v1, "changed"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = false"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const-string v2, "screensaver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v6

    :goto_9
    if-ne v0, v6, :cond_14

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "desk_home_screen_display"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_13

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09063f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090e0b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/DisplaySettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$17;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/DisplaySettings$18;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$18;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_4

    :cond_12
    move v0, v1

    goto :goto_9

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "desk_home_screen_display"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_4

    :cond_14
    new-instance v0, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_4

    :cond_15
    const-string v2, "reading_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v6

    :goto_a
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "e_reading_display_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_16
    move v0, v1

    goto :goto_a

    :cond_17
    const-string v2, "accelerometer_with_smart_rotation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_19

    move v1, v6

    :cond_19
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_1a
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    if-eqz v0, :cond_1c

    move v1, v6

    :cond_1c
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    move v1, v6

    :cond_1e
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto/16 :goto_4

    :cond_1f
    move-wide v0, v4

    goto/16 :goto_3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v0}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    if-ne v0, v2, :cond_3

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_3
    return v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accelerometer_rotation"

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    :goto_5
    invoke-static {v0, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "display_battery_percentage"

    if-eqz v0, :cond_b

    move v3, v2

    :cond_b
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ModePreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.NewModePreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ModePreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "edit_after_screen_capture"

    if-eqz v0, :cond_10

    move v3, v2

    :cond_10
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_12

    move v3, v2

    :cond_12
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_13
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto/16 :goto_2

    :cond_14
    move v2, v3

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mClearfont:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    new-instance v0, Lcom/android/settings/DisplaySettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$15;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_2

    :cond_16
    const-string v0, "persist.sys.font_clarity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClearfont_check_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persist.sys.font_clarity"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->restartSettings()V

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_rotation"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accelerometer_rotation_second"

    if-eqz v0, :cond_19

    :goto_8
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_19
    move v2, v3

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sub_lcd_auto_lock"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1b

    :goto_9
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1b
    move v2, v3

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_night_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_a
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1d
    move v2, v3

    goto :goto_a

    :cond_1e
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isEnabledScreenReaderService()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->showTalkBackDisablePopup()V

    goto/16 :goto_2

    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "multi_window_enabled"

    if-eqz v0, :cond_20

    :goto_b
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/DisplaySettings$16;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$16;-><init>(Lcom/android/settings/DisplaySettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_20
    move v2, v3

    goto :goto_b

    :cond_21
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_c
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto/16 :goto_2

    :cond_22
    move v2, v3

    goto :goto_c

    :cond_23
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string v1, "pref_smart_stay_noti"

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    :cond_24
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "intelligent_sleep_mode"

    if-eqz v0, :cond_26

    move v3, v2

    :cond_26
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_27
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string v1, "pref_smart_pause_noti"

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    :cond_28
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "smart_pause"

    if-eqz v0, :cond_2a

    move v3, v2

    :cond_2a
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_2b
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "header_display_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v0

    if-le v0, v5, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.wallpaperchooser"

    const-string v3, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->setLedIndicator(Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "intelligent_sleep_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->resume()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v4}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_off_timeout"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_adjust_touch"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "contextual_page"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "e_reading_display_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "e_reading_display_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "DisplaySettings"

    const-string v4, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v4, 0x64

    if-lt v0, v4, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->directBrightness()V

    :cond_0
    :goto_5
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accelerometer_rotation_second"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "multi_window_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "multi_window_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->updateAccessControlCheckbox()V

    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "brightness"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAvailableBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    :cond_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_e

    move v3, v1

    :goto_8
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    :goto_9
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_4

    :cond_a
    iget v4, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    goto/16 :goto_5

    :cond_b
    iget v4, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto/16 :goto_5

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    move v3, v2

    goto :goto_8

    :cond_f
    move v1, v2

    goto :goto_9
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    sget v0, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-ne v1, v6, :cond_2

    const v1, 0x7f0a002b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const v3, 0x7f090645

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v0, v1, v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "DisplaySettings"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0a0029

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public restartSettings()V
    .locals 6

    const-string v0, "FontSolution"

    const-string v1, "To Restart = true "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.infraware.polarisoffice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice4.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisoffice5.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.infraware.polarisviewer5.document"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "FontSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    FSN package forceStopPackage to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const-string v3, "FontSolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    FSN Package restart : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v1, "FontSolution"

    const-string v2, "kill this package : com.android.settings"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    move-wide v2, v0

    :goto_1
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxTimeout: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDeviceLockTimeout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0401a7

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b0424

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f09008a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090632

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    move-wide v0, v2

    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public showSmartScreenGuideDialog()V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f04023a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0b057b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0b0195

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    array-length v1, v1

    new-array v8, v1, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_stay_noti"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    :goto_1
    const v1, 0x7f091292

    move v2, v1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v9, "pref_smart_stay_noti"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v3

    aget-object v1, v8, v3

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v3, v9, v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v4

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v4

    const-string v1, ""

    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_9

    if-eq v3, v4, :cond_2

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_6

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v2, "pref_smart_pause_noti"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    const v1, 0x7f09129f

    move v2, v1

    goto/16 :goto_2

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_5
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_9

    if-ne v3, v4, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "- "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    aget-object v3, v8, v4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_7
    const v1, 0x7f0b019d

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$26;

    invoke-direct {v2, p0, v6, v0}, Lcom/android/settings/DisplaySettings$26;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/DisplaySettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$27;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->startAnimation()V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v9, "pref_smart_pause_noti"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v3

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v3

    aget-object v1, v8, v3

    const v3, 0x7f0912bf

    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v1, v1, v4

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v8, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0912c0

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0912c1

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0912c2

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0912c3

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0919c2

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    aget-object v3, v8, v4

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_d
    move v2, v3

    goto/16 :goto_2
.end method

.method public updateAccessControlCheckbox()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    :goto_1
    sget-boolean v4, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3fc00000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v0, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
